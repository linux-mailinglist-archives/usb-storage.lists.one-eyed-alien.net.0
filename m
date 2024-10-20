Return-Path: <usb-storage+bncBCU3TE7MRIPRBRPA2K4AMGQE6SBAIXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 775B59A52FF
	for <lists+usb-storage@lfdr.de>; Sun, 20 Oct 2024 09:24:55 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-71e67b6eed7sf4508027b3a.0
        for <lists+usb-storage@lfdr.de>; Sun, 20 Oct 2024 00:24:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1729409093; cv=pass;
        d=google.com; s=arc-20240605;
        b=jYVHqf3MwGWu+SwR9WsTQOUlcl0U5tGpAMmUjObu//dey8ONJMUL++VTbF1gYhw62L
         0MPY0fvS1Zbhtv8ycFNimpgYhKrMclChgpOzdMwcLxIKjyLXXfzznZq9gHbZUbN7KBCu
         5BC0Mx73GvTVzzSwbvfDi3+NrRuwwd6lvA2rf88RrNS+XUtfzQmzqPBP6oCbXbQreWX5
         xvdePfxNbY7YU+Au3z4hC9V5enJ2AmlO7IOVFyEUUbyj9uwJh300C7NvgKnBVjXO3TZ8
         x4qTY3pyoaPVYCpZ2gEP4P/rhTt8yFYLr/UhWOpGm+Z8PBoYWVSpSczkzPigM6bi2DwS
         cvxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/rCVZeRg+H2bWeg3CHH9ZqejLcXMr2wLz9KCYHWl4Mg=;
        fh=Yen8XXPqcsaSO+7JvwQAGuvLH/jTmm7b/2K+jD9r0/g=;
        b=H8xvfBR3so/7R0GMZltrgFjyzw1XewEzfi+1vriWlsdOuyKXeymgobUbp4T+bmftNW
         fbB+qB6Bko4OMZUU5KXi2ZRUtCrCGX5D5mF8A618wSc4cK/ydR0QGNt8rA7jM7liwjTJ
         AItT0WIf7i07CTr84hwosaEVFA8l0ATh0ylhLybpkhWuZ9or1Q7GXe24W+irzA90uhO/
         u3dartPfxPDdz43wkZSlF4MTVPoLJyhUuaIZllg4Nnfse5MnTfe5Vn4XW6cOnlvGhPDR
         ArDQRegOsdlLGDd5SNMD1X7J0x12qCihoNSknIAaJRFE2EcfSHb1ZqGK/G1SZSA1ff7I
         vViw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=KrsrX0mT;
       spf=pass (google.com: domain of 18500469033@163.com designates 117.135.210.4 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1729409093; x=1730013893; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/rCVZeRg+H2bWeg3CHH9ZqejLcXMr2wLz9KCYHWl4Mg=;
        b=W2F1ioQHrsXQ1TOY7sUNxA5TLNO1drbCr4YslMXISbyHT+3jFZvLG87TMQ06PmU+em
         h5zmMFiXqYfCJ7jAYSXgUnaUpWauVOdaeozi7VB73e53TW41TOm0LE1OqHAStpXLFjSx
         DWMypxWSU+gqqUmV9GwnAIa/+Ecl5pLnmUtKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729409093; x=1730013893;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/rCVZeRg+H2bWeg3CHH9ZqejLcXMr2wLz9KCYHWl4Mg=;
        b=cqlH06XkBN9oUXZoZMHfgdxkMwm+Qo1Z/fiqGc3JtedM1+hfuDZABtmuJwaSGCUv67
         E4ECx9yR3X7gEOlQgBF1IgOiSBw2ZRHRCY7uxsETAqh43RXNrV7/4EfeIRDInS7ETlqT
         /1bebv1TWa/cak2PsoyZ/UNLa9LHdNZ3yKmoGbUoSgVj+nfPcHmGw0ZAlIShKoe+78t5
         vXmbtnYRObECFsqqPItqVRNx63FhH3m3KhTtorcYkyt7M27loYiFZnDooAPD371sb1Mb
         ir2dr6hLAlu7O1ckubIaMqDDc9UX2v48RDnlH6PbLaVPkSzeQeHd4FsxosG7h33Xfw/0
         789A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX8dqL0cEQN/HXYpelhUMe/lCaIB5bDvIyIwesVFvPNRZsUYomtIJH9Ygi8H4SW1c68yakQug==@lfdr.de
X-Gm-Message-State: AOJu0YynJtavqFxVITZKzn+ab+w/y2GU9jfbbyFeeokDjoRtyaAWvpQ2
	xgSiovaQ+FKrl1t0T415d7g/C1xnLOtYN7YXAG3C89HQQAjbcODhbN1XyEkDJRY=
X-Google-Smtp-Source: AGHT+IHYfIi35i0+Z8DtMW5/I24plWvD1QT7flhitkbCZue2bmXGyyUEpGiPtqkMoo9W0AXSD6HJ1A==
X-Received: by 2002:a05:6a00:1819:b0:71e:68ae:aaed with SMTP id d2e1a72fcca58-71ea3116f25mr10724919b3a.1.1729409093570;
        Sun, 20 Oct 2024 00:24:53 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:2e23:b0:71e:417:5f1c with SMTP id
 d2e1a72fcca58-71e8f88e123ls3103141b3a.0.-pod-prod-08-us; Sun, 20 Oct 2024
 00:24:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXFXR0F382ssyEWrARfkXhNm3jP8L5U0DuFLh3LunRDiKcN02fXRLDYCe86WG5AhXNOIC/+d9KC6Y86CQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2311:b0:1fa:9c04:946a with SMTP id d9443c01a7336-20e5a70961emr112528195ad.1.1729409092345;
        Sun, 20 Oct 2024 00:24:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1729409092; cv=none;
        d=google.com; s=arc-20240605;
        b=KSgwtwZe6CTn1grZmrmGC+IaumEZXb1c6R3I3coOukf6kLHViDEfwWnip2uVanJor5
         YjRzeC1L8KPztmvKhlip+2+tSETl7XXjgEe6M/53Zozh05OQq1lcAlDNuWFtxmSOGNNa
         a7MUGu6FbDGAG2mEEQRQAYeJB7U7/el5e9uHy2QTrEdMUuBSxRojqDWmx7g95fF2qszi
         JJpuMzSQeqLav8XmZIZ161W1FxY0Mr0461+UyLdYHs1hjumNWRNjVx0Yef6dmS5xGzyk
         KWSsyTueEW0rQEUKYsY65KpAtDwDtBKHH/ZLzFKwUrY3tpr6STkOINe4tzPXNRZA6bFn
         I9qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3Vt9jOKkbk0VwBuWTJOwKr4gbwppQIcJn+UOHdM5dWU=;
        fh=s91vz4eF0sDHh7hh5nqy0gBc+HglsUgKir+hPvVHJe8=;
        b=Lo16hbrUIsR+1SaBi4sa8O//dJLmLKAa7DZYQNL/jtMiNLuLpBDZ+jDsDf52vGs4j8
         9h1BMtP1juq+xQJLF1hstWYBb3EOMi3IunEXHmmFoXBwghVnucgDK9IyLsLGEHBuh3/C
         a9L8Lr0L5X4/nv2pXJcyroW5hdoMsxY9lmAdqrdlCJeqNTWYTxradfip+uMH6Ry7zAqQ
         GO+jLujRxwP2zNzsaSE1RQ9O4VoGSkWXfKSxp0TItqskCfQk+f5+dXEhBsER6pEDpeWP
         vkswy/Gv/WflfKnCxAUI5bNVkFp8tTAgKctiE4kgQ9OwtZ6AGJ4FgdlYmg36ose6Usxy
         qO+w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=KrsrX0mT;
       spf=pass (google.com: domain of 18500469033@163.com designates 117.135.210.4 as permitted sender) smtp.mailfrom=18500469033@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [117.135.210.4])
        by mx.google.com with ESMTP id 41be03b00d2f7-7eaeabfdc35si1076850a12.534.2024.10.20.00.24.51
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 20 Oct 2024 00:24:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 18500469033@163.com designates 117.135.210.4 as permitted sender) client-ip=117.135.210.4;
Received: from localhost.localdomain (unknown [114.253.22.201])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wD339lAsBRnRQwEAQ--.29805S2;
	Sun, 20 Oct 2024 15:24:49 +0800 (CST)
From: Dingyan Li <18500469033@163.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH v2] usb: storage: use US_BULK_FLAG_OUT instead
 of constant values
Date: Sun, 20 Oct 2024 15:23:28 +0800
Message-Id: <20241020072328.26401-1-18500469033@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2024102056-yearly-caregiver-d684@gregkh>
References: <2024102056-yearly-caregiver-d684@gregkh>
MIME-Version: 1.0
X-CM-TRANSID: _____wD339lAsBRnRQwEAQ--.29805S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZr4DGrWUuFy3tw48WF48JFb_yoWrXr1kpF
	WDArW5CFyrtF4Fvw15tw4UCFWrAwnYgr9rKF4Iy3s5urnxAFyUGa4qkrZ8Xw1rGr1DZFy2
	yw4qqF4jkrWFgrUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jnKsUUUUUU=
X-Originating-IP: [114.253.22.201]
X-CM-SenderInfo: jprykiiquwmiitt6il2tof0z/1tbiNhV+y2cUnJW+bQAAs-
X-Original-Sender: 18500469033@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=KrsrX0mT;       spf=pass
 (google.com: domain of 18500469033@163.com designates 117.135.210.4 as
 permitted sender) smtp.mailfrom=18500469033@163.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=163.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

Macros with good names offer better readability.

Signed-off-by: Dingyan Li <18500469033@163.com>
---
v1 -> v2: remove contents unrelated to the patch subject.

 drivers/usb/storage/ene_ub6250.c | 8 ++++----
 drivers/usb/storage/realtek_cr.c | 4 ++--
 drivers/usb/storage/transport.c  | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

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
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241020072328.26401-1-18500469033%40163.com.
