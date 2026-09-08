# 🍞 Food Ordering System (LCC FOS)

A DOS-based Point-of-Sale (POS) simulation for a small bakery/café, written entirely in **8086/x86 Assembly** (TASM/MASM). Runs in DOSBox.

一个使用 **8086/x86 汇编语言**（TASM/MASM）编写、可在 DOSBox 中运行的面包店/咖啡厅 POS（销售点）模拟系统。

---

## ✨ Features / 功能

- 🧑‍🍳 **Customer Ordering Menu** — Browse product categories (Buns / Cakes) and place orders
  顾客点餐菜单 — 浏览商品分类（面包 / 蛋糕）并下单
- 💳 **Payment Simulation** — Supports Cash and TnG (e-wallet QR) payment methods
  支付方式模拟 — 支持现金（Cash）与 TnG 电子钱包（QR Code）付款
- 🧾 **Receipt Printing** — Auto-generates an itemized receipt after checkout
  收据打印 — 结账后自动生成明细收据
- 🔐 **Admin Login System** — Password-protected admin panel with retry limit
  管理员登录系统 — 密码保护，支持重试次数限制
- 📊 **Sales Report** — Tracks quantity sold and revenue per product, plus daily total
  销售报表 — 记录每项商品的销售数量与金额，以及每日总额
- 🔑 **Change Password** — Admin can update the login password
  修改密码 — 管理员可自行更改登录密码
- 🔄 **New Day Reset** — Clears order/sales data to start a fresh business day
  开启新的一天 — 清空订单与销售数据，重新开始新一天的营业

## 🛒 Menu / 商品菜单

| Product / 商品 | Price / 价格 |
|---|---|
| Cheese Bun / 芝士面包 | RM 2.00 |
| Potato Bun / 马铃薯面包 | RM 3.00 |
| Chocolate Cake / 巧克力蛋糕 | RM 4.00 |
| Banana Cake / 香蕉蛋糕 | RM 5.00 |

## 🛠️ Built With / 技术栈

- x86 Assembly (TASM/MASM syntax)
- INT 21H (DOS services) / INT 10H (BIOS video services)
- Tested on DOSBox 0.74-3

## 🚀 How to Run / 运行方法

```bash
# Assemble and link (using TASM)
tasm lccfos.asm
tlink lccfos.obj

# Run in DOSBox
lccfos.exe
```

用 TASM 编译并链接后，在 DOSBox 中运行 `lccfos.exe` 即可启动系统。

## 📸 Screenshots / 截图

*(Add your screenshots here / 在此添加系统截图)*

## 📄 License

This project is licensed under the MIT License.
本项目采用 MIT 许可证。
