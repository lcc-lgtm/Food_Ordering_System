# Food Ordering System

A DOS-based Point-of-Sale (POS) simulation for a small bakery/café, written entirely in **8086/x86 Assembly** (TASM/MASM). Runs in DOSBox.

一个使用 **8086/x86 汇编语言**（TASM/MASM）编写、可在 DOSBox 中运行的面包店/咖啡厅 POS（销售点）模拟系统。

---

## Features / 功能

- **Customer Ordering Menu** — Browse product categories (Buns / Cakes) and place orders
  顾客点餐菜单 — 浏览商品分类（面包 / 蛋糕）并下单
- **Payment Simulation** — Supports Cash and TnG (e-wallet QR) payment methods
  支付方式模拟 — 支持现金（Cash）与 TnG 电子钱包（QR Code）付款
- **Receipt Printing** — Auto-generates an itemized receipt after checkout
  收据打印 — 结账后自动生成明细收据
- **Admin Login System** — Password-protected admin panel with retry limit
  管理员登录系统 — 密码保护，支持重试次数限制
- **Sales Report** — Tracks quantity sold and revenue per product, plus daily total
  销售报表 — 记录每项商品的销售数量与金额，以及每日总额
- **Change Password** — Admin can update the login password
  修改密码 — 管理员可自行更改登录密码
- **New Day Reset** — Clears order/sales data to start a fresh business day
  开启新的一天 — 清空订单与销售数据，重新开始新一天的营业

## Menu / 商品菜单

| Product / 商品 | Price / 价格 |
|---|---|
| Cheese Bun / 芝士面包 | RM 2.00 |
| Potato Bun / 马铃薯面包 | RM 3.00 |
| Chocolate Cake / 巧克力蛋糕 | RM 4.00 |
| Banana Cake / 香蕉蛋糕 | RM 5.00 |

## Built With / 技术栈

- x86 Assembly (TASM/MASM syntax)
- INT 21H (DOS services) / INT 10H (BIOS video services)
- Tested on DOSBox 0.74-3

## How to Run / 运行方法

```bash
# Assemble and link (using TASM)
tasm lccfos.asm
tlink lccfos.obj

# Run in DOSBox
lccfos.exe

# Current own file position: C:\8086\...

# Commands FLOWS ：
1. Z:\> MOUNT C C:\8086
   Drive C is mounted as local directory c:\8086\
   
2. Z:\> C:

3. C:\> MASM Food_Ordering_System.ASM
   Microsoft (R) Macro Assembler Version 5.00
   Copyright (C) Microsoft Corp 1981-1985, 1987. All rights reserved.

   Object filename [...OBJ]:
   Source listing  [NUL.LST]:
   Cross-reference [NUL.CRF]:

   51506  +  415886  Bytes symbol space free

       0 Warning Errors
       0 Severe  Erroes

 4. C:\> LINK Food_Ordering_System.OBJ;
    Microsoft (R) Overlay Linker  Version 3.60
    Copyright (C) Microsoft Corp 1983-1987.  All rights reserved.

    Run File [...EXE]:
    List File [NUL.MAP]:
    Libraries [.LIB]:

5. C:\> Food_Ordering_System.EXE

6. ...In program...


```

用 TASM 编译并链接后，在 DOSBox 中运行 `lccfos.exe` 即可启动系统。

## Screenshots / 截图
<img width="634" height="383" alt="image" src="https://github.com/user-attachments/assets/91bb8f51-ccee-43d7-bcdb-4e05d467bd00" />
<img width="637" height="386" alt="image" src="https://github.com/user-attachments/assets/c02eafcd-9adc-4206-bc12-2a144785673e" />
<img width="637" height="383" alt="image" src="https://github.com/user-attachments/assets/c1777aab-5fcf-4038-a2ab-dc4d0f88fb22" />
<img width="635" height="386" alt="image" src="https://github.com/user-attachments/assets/ba373420-cb87-4fa4-a017-b91df34417b0" />
<img width="636" height="390" alt="image" src="https://github.com/user-attachments/assets/586073c4-8d50-4f6e-94e6-36e23c1462db" />
<img width="637" height="388" alt="image" src="https://github.com/user-attachments/assets/1ef34232-a13f-4838-a78b-19b72f7bc925" />

<img width="635" height="380" alt="image" src="https://github.com/user-attachments/assets/6d9b5351-817d-430d-a3aa-1cfd9d6d8724" />
<img width="634" height="392" alt="image" src="https://github.com/user-attachments/assets/edd304fd-a3dd-49d9-87c4-9b826cb26c5e" />
<img width="633" height="384" alt="image" src="https://github.com/user-attachments/assets/2978e3c9-0380-4e44-a181-9a115567f9f3" />
<img width="636" height="389" alt="image" src="https://github.com/user-attachments/assets/0d22fc2c-76bc-4f9b-a484-8c67d39265cc" />
<img width="634" height="384" alt="image" src="https://github.com/user-attachments/assets/bf27a90a-36ea-481e-a08b-87c618bb8a58" />


## 📄 License

This project is licensed under the MIT License.
本项目采用 MIT 许可证。
