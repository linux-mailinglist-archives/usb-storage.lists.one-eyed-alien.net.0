Return-Path: <usb-storage+bncBCU3TE7MRIPRB5FS2C4AMGQEZIMV4LI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E569A50C9
	for <lists+usb-storage@lfdr.de>; Sat, 19 Oct 2024 22:41:26 +0200 (CEST)
Received: by mail-oi1-x248.google.com with SMTP id 5614622812f47-3e27a0b942esf2684639b6e.3
        for <lists+usb-storage@lfdr.de>; Sat, 19 Oct 2024 13:41:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1729370485; cv=pass;
        d=google.com; s=arc-20240605;
        b=I7Btk4PEMOR3FMeSUQgVIYUaWp+YYwTJCnzppCoAcCwnam7MESqg2FUuBehjFFWdtu
         3W9zU5Yhlh6epNyl6I3pU2cXGAU1QM6W8y+n786etv+1JG2m4ZrwJw0zjPDXGWTUWmap
         0qzLfwO7on/baCm+PZ+A/hqetR7wc7RR5bqy+VvgIR4TUD084TzI1+oQ6hr9LqNrmdcm
         I+g6jn325XMlcol7fqvF4BLvrp0akIvrCSM5Tj8sMnXuj3eXvoqDUv5XvUy5+Y7Ckex/
         ZHGkq38hij/52pKUNcALpGTrW4wlVgObV48bs/EvBslSLsyked4kzwiN3wa6xASR39Iv
         7KDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=V2pS2WiTqi0k837l4xxz0w5hjo+z38+xUum4kjhhEe4=;
        fh=QrLddoDHd93IPNpgLuAUiLwmk7sIhu1xNHKtzDofh/A=;
        b=F+0ncoGneTy2h/qNppNkA2urbI/PquW45Ie0aVLLkGV4u2ewynris2fSGH4lENV5us
         J2MeeKp5phq1j/P3OALoRvdYdhFRVfvnoUDQeviToCUY07kuu+UAsqmmr09EOfWhCV7O
         lgfh5OQZHPGHYw3BodY0ZxysfmbkZBh/XCT3HRN/moGPl7IHba8wP2eixaXHQms/n+Kc
         +zbsClcqUehS0U1C//7H1qTjrc0hd52gZMBjgLfgv53M3d7OmkjQdghsINTiorzY5MCb
         M6Hcv+/7a66/gIxj4pnV8doinbZn/U0b2QZyHw1INuJluoxaF29BHZdREKIBj+r+f9Ns
         tzmA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=KvvaeNvA;
       spf=pass (google.com: domain of 18500469033@163.com designates 117.135.210.2 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1729370485; x=1729975285; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=V2pS2WiTqi0k837l4xxz0w5hjo+z38+xUum4kjhhEe4=;
        b=Wx6M4cT11z4GpLvSI+qSn1veyI5cZ1LGDyHdiIHTlRGTC2ZLiAcm3CKdPgqGXfSCyU
         v0MIh24o/Ww0XI0m1oCtL3EOy/uXXJ/GpE3vAkqBi7tzs1gV65lfMtsgf3xx5yHzMs8L
         caXNK9pJssUbfBLS3ukH9kj+ff2wo1EmOr50w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370485; x=1729975285;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V2pS2WiTqi0k837l4xxz0w5hjo+z38+xUum4kjhhEe4=;
        b=ok+f+LTtI/dNA+HeTqy5m4Tgv90+bdRJ5m9jJhtYPEEhGxL4mGT1td8F5Qc4B7kmVV
         Ej3D40HI8g+wj5JjqBmwxJTccEYp2mcx1z0nEY42SNBSRujtshEbzCNgx0sSPc/DeU9z
         Ne/EMVF2RVzv2bJFTNbYZOdAYqYLoqGq50nIm4L7YuQqJV0z12jr46alBqRihGUfcAtg
         LyTd1b2naVZupRpkzmMbp8hT32WLJdChIDwF17yxmrUU29Q9ox8Q0FSGTr49/auBFti9
         eM7skoMXKCY6+NSCEu/cjGrzqwoSZ62Yxj2I//+tslGtkRqXOh651+vdIqy6Itl1SsLT
         cOFw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWXDRpd93ufjtccI16fqZtsVhmfZNagNbQ4339ieDw/891cb6COwnwt5A7++kgPtPujS/jKLg==@lfdr.de
X-Gm-Message-State: AOJu0YyXCa0UpTaNz8qi6EwtTPAi9Kw6Qj6V6GkjOUJwDlT0CCI/IrR9
	lKpFdvsmYn3et1fChFk2GQ6n0ouOMuNX2gLXrvTxJbUeAE1miF3Urf033wjd2IE=
X-Google-Smtp-Source: AGHT+IGt0hDlZi50a1h/MUbSXDbbi7UAQUpLmpSVfepQOQhyErwje9bofwq7m5JjXPglv8gA9KXSaA==
X-Received: by 2002:a05:6870:3925:b0:26f:ddfa:3564 with SMTP id 586e51a60fabf-2892c2577cdmr5235182fac.6.1729370484797;
        Sat, 19 Oct 2024 13:41:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:6711:b0:25c:b2c1:8569 with SMTP id
 586e51a60fabf-2890ccb2db0ls2051332fac.1.-pod-prod-04-us; Sat, 19 Oct 2024
 13:41:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVlB0gAI9s9ykdg8BlDTX4qcw8ERMdeq2h2I2kI4xjUbePYVBIdaN4vVObp3bhWenu3+W65j/kLh5j1Ew==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:399b:b0:3e6:105d:33db with SMTP id 5614622812f47-3e6105d357fmr172985b6e.7.1729370484237;
        Sat, 19 Oct 2024 13:41:24 -0700 (PDT)
Received: by 2002:aca:240a:0:b0:3d9:2ea5:e56e with SMTP id 5614622812f47-3e6015a01e0msb6e;
        Sat, 19 Oct 2024 09:09:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXlKqTK66vMDFic5WsZwlIozqu+IcSHDtkEHFceXufX4xwNGzIFKmaoZYgFMQRpXJPumJKnuhfzGCRx1A==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:d507:b0:20c:6ac0:f1f3 with SMTP id d9443c01a7336-20e5a8cfb59mr94672305ad.34.1729354178694;
        Sat, 19 Oct 2024 09:09:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1729354178; cv=none;
        d=google.com; s=arc-20240605;
        b=iU297Xefm4uMA8JuvV1984EDCNmywXjhpEEjAzW/2NryM+i2giZ1VS1HKWK95o0KVS
         65aH2i+Pfla8G4lvz7gHuyUR5IjiK8ViUg0s/6HRCss/GGxYzID/Zikpllh0BLbaHB1d
         8naI41q1mHhmtZViTeamlM9wAzItLlmv4RRGs8o552d4J52qfn81tU6lM7DJ7Pyjz6mG
         lfcQkA3xYh+o4LfTZHjuj+993zsl/JzzWumsuZXvarhjyESvGbnii2pSc1FjoWgPp4mO
         iMlV81/n2x71mj2bwk2+OO8Res9TezpCjGAUGwIe8Aswqrc6yIZL4yi3iCre8o2gK649
         oqFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/nbGo3iWxU6M38i9I2wk5DzIIidP1/C0p11d4f3XdLo=;
        fh=s91vz4eF0sDHh7hh5nqy0gBc+HglsUgKir+hPvVHJe8=;
        b=KHjIrYSeUh2S3qEqoWlD5WxkSv3HUefSmNZXdJsQGwzzdwJJtGtQqSJ3axLIuKkk88
         XbPheoeVHHeQiJ8k7f/cTvk2OlRehDVE/XICGW2xU7cvGLo+tpQwNtd+fRul8a6cHQ6n
         Fkh6XpTDeJw33AU3K/POgXk10XtytlYgHGdR5o+dtPTdxjn0o44g0olyDQyhBE8WmXT4
         +p/Yegsf0g6sanUtBwWp8gPrIFZDN3/eLjg7BygVJdqPo3bP7Ekqhnwfl9jjjHui5Rpx
         vjBLHFDB5bFvj30IlZPHZ3bjHx6cM5+cSlpnRccVyhmXTQOZgeg6KM1usVuyFDlfrXJS
         fWhw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=KvvaeNvA;
       spf=pass (google.com: domain of 18500469033@163.com designates 117.135.210.2 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [117.135.210.2])
        by mx.google.com with ESMTP id d9443c01a7336-20e5a75320asi41417845ad.146.2024.10.19.09.09.38
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 19 Oct 2024 09:09:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 18500469033@163.com designates 117.135.210.2 as permitted sender) client-ip=117.135.210.2;
Received: from localhost.localdomain (unknown [114.253.22.201])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wCnz6a32RNn7NcBCA--.25777S2;
	Sun, 20 Oct 2024 00:09:31 +0800 (CST)
From: Dingyan Li <18500469033@163.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH v1] usb: storage: use US_BULK_FLAG_OUT instead
 of constant values
Date: Sun, 20 Oct 2024 00:08:22 +0800
Message-Id: <20241019160822.6862-1-18500469033@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wCnz6a32RNn7NcBCA--.25777S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZr4DGrWUuFy3uryrCFWDtwb_yoWrur4Upa
	yDA3y5CFyrKF4Fvw4DJw4UCFWrAwnYgr9rKFWfC3s5ur9xZa48GF90kFZ8Xw1rWrnrZFy2
	kr4qqF4UCryFgwUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jnMa8UUUUU=
X-Originating-IP: [114.253.22.201]
X-CM-SenderInfo: jprykiiquwmiitt6il2tof0z/xtbBZwp9y2cTyut26gAAsS
X-Original-Sender: 18500469033@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=KvvaeNvA;       spf=pass
 (google.com: domain of 18500469033@163.com designates 117.135.210.2 as
 permitted sender) smtp.mailfrom=18500469033@163.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=163.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Macros with good names offer better readability. Besides, fix an error
in the comments. In the flags, direction is in bit 7 instead of bit 0.

Signed-off-by: Dingyan Li <18500469033@163.com>
---
 drivers/usb/storage/ene_ub6250.c | 8 ++++----
 drivers/usb/storage/realtek_cr.c | 4 ++--
 drivers/usb/storage/transport.c  | 2 +-
 include/linux/usb/storage.h      | 2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index a4bfbecbf16c..fd46e81388d2 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -737,7 +737,7 @@ static int sd_scsi_write(struct us_data *us, struct scsi_cmnd *srb)
 	memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 	bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 	bcb->DataTransferLength = blenByte;
-	bcb->Flags  = 0x00;
+	bcb->Flags  = US_BULK_FLAG_OUT;
 	bcb->CDB[0] = 0xF0;
 	bcb->CDB[5] = (unsigned char)(bnByte);
 	bcb->CDB[4] = (unsigned char)(bnByte>>8);
@@ -1163,7 +1163,7 @@ static int ms_read_copyblock(struct us_data *us, u16 oldphy, u16 newphy,
 	memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 	bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 	bcb->DataTransferLength = 0x200*len;
-	bcb->Flags = 0x00;
+	bcb->Flags = US_BULK_FLAG_OUT;
 	bcb->CDB[0] = 0xF0;
 	bcb->CDB[1] = 0x08;
 	bcb->CDB[4] = (unsigned char)(oldphy);
@@ -1759,7 +1759,7 @@ static int ms_scsi_write(struct us_data *us, struct scsi_cmnd *srb)
 		memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 		bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 		bcb->DataTransferLength = blenByte;
-		bcb->Flags  = 0x00;
+		bcb->Flags  = US_BULK_FLAG_OUT;
 		bcb->CDB[0] = 0xF0;
 		bcb->CDB[1] = 0x04;
 		bcb->CDB[5] = (unsigned char)(bn);
@@ -1931,7 +1931,7 @@ static int ene_load_bincode(struct us_data *us, unsigned char flag)
 	memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 	bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 	bcb->DataTransferLength = sd_fw->size;
-	bcb->Flags = 0x00;
+	bcb->Flags = US_BULK_FLAG_OUT;
 	bcb->CDB[0] = 0xEF;
 
 	result = ene_send_scsi_cmd(us, FDIR_WRITE, buf, 0);
diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 0c423916d7bf..54ffff86c6fa 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -212,7 +212,7 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
 	/* set up the command wrapper */
 	bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 	bcb->DataTransferLength = cpu_to_le32(buf_len);
-	bcb->Flags = (dir == DMA_FROM_DEVICE) ? US_BULK_FLAG_IN : 0;
+	bcb->Flags = (dir == DMA_FROM_DEVICE) ? US_BULK_FLAG_IN : US_BULK_FLAG_OUT;
 	bcb->Tag = ++us->tag;
 	bcb->Lun = lun;
 	bcb->Length = cmd_len;
@@ -301,7 +301,7 @@ static int rts51x_bulk_transport_special(struct us_data *us, u8 lun,
 	/* set up the command wrapper */
 	bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 	bcb->DataTransferLength = cpu_to_le32(buf_len);
-	bcb->Flags = (dir == DMA_FROM_DEVICE) ? US_BULK_FLAG_IN : 0;
+	bcb->Flags = (dir == DMA_FROM_DEVICE) ? US_BULK_FLAG_IN : US_BULK_FLAG_OUT;
 	bcb->Tag = ++us->tag;
 	bcb->Lun = lun;
 	bcb->Length = cmd_len;
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 7449e379077a..9d767f6bf722 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -1133,7 +1133,7 @@ int usb_stor_Bulk_transport(struct scsi_cmnd *srb, struct us_data *us)
 	bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 	bcb->DataTransferLength = cpu_to_le32(transfer_length);
 	bcb->Flags = srb->sc_data_direction == DMA_FROM_DEVICE ?
-		US_BULK_FLAG_IN : 0;
+		US_BULK_FLAG_IN : US_BULK_FLAG_OUT;
 	bcb->Tag = ++us->tag;
 	bcb->Lun = srb->device->lun;
 	if (us->fflags & US_FL_SCM_MULT_TARG)
diff --git a/include/linux/usb/storage.h b/include/linux/usb/storage.h
index 2827ce72e502..8539956bc2be 100644
--- a/include/linux/usb/storage.h
+++ b/include/linux/usb/storage.h
@@ -53,7 +53,7 @@ struct bulk_cb_wrap {
 	__le32	Signature;		/* contains 'USBC' */
 	__u32	Tag;			/* unique per command id */
 	__le32	DataTransferLength;	/* size of data */
-	__u8	Flags;			/* direction in bit 0 */
+	__u8	Flags;			/* direction in bit 7 */
 	__u8	Lun;			/* LUN normally 0 */
 	__u8	Length;			/* length of the CDB */
 	__u8	CDB[16];		/* max command */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241019160822.6862-1-18500469033%40163.com.
