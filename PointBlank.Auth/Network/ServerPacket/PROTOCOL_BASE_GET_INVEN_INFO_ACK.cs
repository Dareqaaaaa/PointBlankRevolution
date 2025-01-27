﻿using PointBlank.Core.Models.Account.Players;
using PointBlank.Core.Network;
using System.Collections.Generic;

namespace PointBlank.Auth.Network.ServerPacket
{
    public class PROTOCOL_BASE_GET_INVEN_INFO_ACK : SendPacket
    {
        private List<ItemsModel> charas = new List<ItemsModel>(), weapons = new List<ItemsModel>(), cupons = new List<ItemsModel>();

        public PROTOCOL_BASE_GET_INVEN_INFO_ACK(List<ItemsModel> items)
        {
            InventoryLoad(items);
        }

        private void InventoryLoad(List<ItemsModel> items)
        {
            for (int i = 0; i < items.Count; i++)
            {
                ItemsModel item = items[i];
                if (item._category == 1)
                {
                    weapons.Add(item);
                }
                else if (item._category == 2)
                {
                    charas.Add(item);
                }
                else if (item._category == 3)
                {
                    cupons.Add(item);
                }
            }
        }

        public override void write()
        {
            int Total = charas.Count + weapons.Count + cupons.Count;
            writeH(527);
            writeH(0);
            writeD(0);
            writeH((short)Total);
            foreach (ItemsModel Item in charas)
            {
                writeD((uint)Item._objId);
                writeD(Item._id);
                writeC((byte)Item._equip);
                writeD((int)Item._count);
            }
            foreach (ItemsModel Item in weapons)
            {
                writeD((uint)Item._objId);
                writeD(Item._id);
                writeC((byte)Item._equip);
                writeD((int)Item._count);
            }
            foreach (ItemsModel Item in cupons)
            {
                writeD((uint)Item._objId);
                writeD(Item._id);
                writeC((byte)Item._equip);
                writeD((int)Item._count);
            }
        }
    }
}