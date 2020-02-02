Return-Path: <usb-storage+bncBCMN5OORTILBBX543LYQKGQEOZHGVYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6FA14FC87
	for <lists+usb-storage@lfdr.de>; Sun,  2 Feb 2020 11:03:13 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id c10sf7844856qtk.18
        for <lists+usb-storage@lfdr.de>; Sun, 02 Feb 2020 02:03:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580637792; cv=pass;
        d=google.com; s=arc-20160816;
        b=SNMLKzTrT/dIycS9IC89nFQmV7SjzhsCXUYP/r8hl1ilyuTSebX5M+1EqAbfaUHMXN
         KtFDBilSjQouoR0hLNStkqjOmo+kUNiZZhdkh63+aTtjNSRte6KX7XxGJuEXEDp3lE71
         RiJ69TTP5AF0Dmuj9l/M1x22rwmCCKb1FZRJKr+8smDJJ2dK5Z+6PpW2G+SUSs9TdiN/
         Gt0Zm4XkygKxk4Szk4lDWHdsd52QfX1S01FHNjpaoD1sd+HxlE7HzBZjkCtGiyXkf1HL
         czWYnPivcNh7Xj07DSss+mkRQdOdtxtWp25DfouXZIfQPytW0n8hR5jhijBML4Nc9AQC
         aFKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=l0P/LW3q+sTNwcMvfh8Hcd3ojp+ZalakL3qE1HhGHwQ=;
        b=O25mWeXk5Hdv2/vme/RzKUSmEjevas7J5JqkhE9570nu15sdkVxyyj6YPpXTKNrx1N
         1LppGcVvWltfmnvFKUS/6oZ+VTTfJKGPXzaPBsGJFzmQAoQ9qD+rLvGKKm8w/RcqssL3
         xnGI4/a5ko0HEhapcwf2xCCuN867TGgSgjrU1cYIPlbl4LtMLnZLMUnOxy4M89UwHZbE
         V554tPwuuDDqhkxFAXn9S0peUJxdx3enpUQB0ciRXaUu9zuITJxcsjI1FatIWu+YOAFx
         z2aATfshSIg1/Ba2+9lXXHAjtB5PCbU0MV+3pVmQO56sy8jNQXr2IpfeyDGbULt2LYG1
         xGhw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@duncanthrax.net header.s=dkim header.b=I1jxxEPL;
       spf=neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0P/LW3q+sTNwcMvfh8Hcd3ojp+ZalakL3qE1HhGHwQ=;
        b=KjNysO1xyyAAjvAWoeGz4TIXAzxKUFfnDDJe/+KZgP4VOUlWjORD84rytVuayAh6Ca
         w68U74wZkqiaCTv8qbelp0hacE6CEG0855yTQB2ROe141VeuNwrLKME8QLJbt53GrIbK
         07MWNzz9XL50rnDoEE6GbKrqiPc819zkmu41c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l0P/LW3q+sTNwcMvfh8Hcd3ojp+ZalakL3qE1HhGHwQ=;
        b=XUM2e3PuBTwLLbf/Se4a8GToDR7g2vhFPOiYkMVhiHPKhTRbg7eWyw1xB8GGcoSbg5
         Z3Y3H34KfuDfgjWK3cQbjxEQZeC2P6770nuGaE5madVUBIRMrnmhoS9KEoeT7fZsbDx4
         d8G/zMnpR30osLxOnWOLUz3EzFlAwqUstqMUgA/070PdpNNfnzrCkXG1DQJrHGS4n0qy
         hSaH8DHTd2Ju5AroWHESbjMj/LeI4XjsSAwWOsBXvTV3QckcLHlRXIWvREed6aUhlXoL
         LBc4nXd4vxIPhrOeBu75Mg5TASDkyZSA77Rsqtl87a51vQPshLlBs5IXPPMR2lafuquP
         uBcQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUM8Vc37eHUMT1cJWZAUEZ00eJUONUW4qRqy5NnNuiqOOd3mr7Q
	10U4qdurynxpOTdUfTEN32TXvg==
X-Google-Smtp-Source: APXvYqwRs3o8hgF7i3WbqIqF7B1BYV/Vy1f812kCMw9hQi1vrL/TjzrHet5VSN76sd8M3Ldckynh4Q==
X-Received: by 2002:a37:bf82:: with SMTP id p124mr19294735qkf.337.1580637791873;
        Sun, 02 Feb 2020 02:03:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1818:: with SMTP id q24ls4476600qtj.0.gmail; Sun, 02 Feb
 2020 02:03:11 -0800 (PST)
X-Received: by 2002:ac8:969:: with SMTP id z38mr18370624qth.203.1580637791232;
        Sun, 02 Feb 2020 02:03:11 -0800 (PST)
Received: by 2002:a37:4a46:0:0:0:0:0 with SMTP id x67msqka;
        Sun, 2 Feb 2020 01:38:24 -0800 (PST)
X-Received: by 2002:a7b:c386:: with SMTP id s6mr22678613wmj.105.1580636303965;
        Sun, 02 Feb 2020 01:38:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580636303; cv=none;
        d=google.com; s=arc-20160816;
        b=0ioK1aXmRFUHiL74BD0cvAJgwhllkwa2ZkwwleMkbOoIVZN8YRX0LIleCIMK35m8RH
         Xr610ep754y+bFrhQoMjR3iN0vKXs081erUsOb2ZLgzJzTAG4/vy98WFRifKjGGbuJFx
         InUF0EDG4yCvDzqciKaZp6FQQPHeRB/9K/vJpfKuXxrJw4BkU9WCpq4xXze77uWDzE2k
         PxxNqvx83wUNeYBURrqapukMIjyJfBKzLNP218w3EwzbIKox2ZFXlx2WqYpxd2LKvWcb
         e6AIk7fPGtJN3PonJzKOWQk/dkpAff9bHe2iIModVQUug4xrdHoNrdzOynu3yIF4JKE9
         cHuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WurKxM7UmPaX2EoryhZt0kZuwKh/DaWByeBrukvwGUY=;
        b=mXDJ3lIuIjPMifxEAj9NvaEKaR8Y1R6EUenWEGDfrlPXDCXHYUqotrI3gkhJCHNSCS
         VybmYd9tQp1zwuDvr1WdP9yQYwVurHhcctA2GiFCUHlf6Rr6n6y8HMgKo/SuJRHQ5LmR
         h84tdoCUE6Ssn0H24u3ZqXvyYhul9nK8KE7Ld1IRvpJdqalQ0cdMahv1qs/kaDAmwZar
         J014pSMZM0E8GsmI6/b2PAluqXZYuaNgT06jXEG3FrVDUfGdSxHAQ/gf634rUf2mW/54
         k4U66yMSMI+R0CFV+b2agfO3GCz2Cuka4WEt6Bh+2FO6FlmN1B3ayQu5WpHMW4yoO2Lb
         7h3A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@duncanthrax.net header.s=dkim header.b=I1jxxEPL;
       spf=neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
Received: from smtp.duncanthrax.net (propper.duncanthrax.net. [91.207.61.48])
        by mx.google.com with ESMTPS id p28si13268391wmi.77.2020.02.02.01.38.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 02 Feb 2020 01:38:23 -0800 (PST)
Received-SPF: neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) client-ip=91.207.61.48;
Received: from [134.3.47.90] (helo=x280.stackframe.org)
	by smtp.duncanthrax.net with esmtpa (Exim 4.90_1)
	(envelope-from <svens@stackframe.org>)
	id 1iyBhq-00009N-L8; Sun, 02 Feb 2020 10:38:18 +0100
From: Sven Schnelle <svens@stackframe.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Sven Schnelle <svens@stackframe.org>
Subject: [usb-storage] [PATCH 2/2] usb-storage: Add support for Ratoc U2SCX
 multiple device mode
Date: Sun,  2 Feb 2020 10:37:49 +0100
Message-Id: <20200202093750.4439-3-svens@stackframe.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200202093750.4439-1-svens@stackframe.org>
References: <20200202093750.4439-1-svens@stackframe.org>
MIME-Version: 1.0
X-Original-Sender: svens@stackframe.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@duncanthrax.net header.s=dkim header.b=I1jxxEPL;       spf=neutral
 (google.com: 91.207.61.48 is neither permitted nor denied by best guess
 record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
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

The Ratoc U2SCX can support more than one device but uses another
USB ID in that case (0584:0222) with a Vendor specific class. The
used protocol is still USB Mass storage, but we need to fetch the
maximum LUN number as otherwise the controller would address all
devices on the SCSI bus when an invalid LUN is probed. It looks like
U2SCX maps SCSI ID to LUN numbers, so we must not enable
US_FL_SCM_MULT_TARG.

dmesg with the driver enabled looks like this:

[  133.157337] usb 1-2: new high-speed USB device number 6 using xhci_hcd
[  133.170273] usb 1-2: New USB device found, idVendor=0584, idProduct=0222, bcdDevice= 1.11
[  133.170279] usb 1-2: New USB device strings: Mfr=1, Product=3, SerialNumber=2
[  133.170283] usb 1-2: Product: USB-SCSI Converter
[  133.170286] usb 1-2: Manufacturer: RATOCSystems,Inc.
[  133.170289] usb 1-2: SerialNumber: 020301002197
[  133.171576] usb-storage 1-2:1.0: USB Mass Storage device detected
[  133.172084] scsi host1: usb-storage 1-2:1.0
[  134.199245] scsi 1:0:0:0: CD-ROM            HL-DT-ST DVDRAM GSA-4163B A100 PQ: 0 ANSI: 2
[  134.202744] scsi 1:0:0:1: Direct-Access     SyQuest  SQ5200C          A0L  PQ: 0 ANSI: 2
[  134.219300] scsi 1:0:0:2: Direct-Access     SyQuest  SQ3270S          1_24 PQ: 0 ANSI: 2
[  134.224660] sr 1:0:0:0: Power-on or device reset occurred
[  134.343256] sr 1:0:0:0: [sr0] scsi3-mmc drive: 40x/40x writer dvd-ram cd/rw xa/form2 cdda tray
[  134.343262] cdrom: Uniform CD-ROM driver Revision: 3.20
[  134.350873] sr 1:0:0:0: Attached scsi CD-ROM sr0
[  134.351120] sr 1:0:0:0: Attached scsi generic sg1 type 5
[  134.351438] sd 1:0:0:1: Attached scsi generic sg2 type 0
[  134.351685] sd 1:0:0:2: Attached scsi generic sg3 type 0
[  134.362141] sd 1:0:0:1: Power-on or device reset occurred
[  134.483977] sd 1:0:0:1: [sdb] Attached SCSI removable disk
[  134.513922] sd 1:0:0:2: Power-on or device reset occurred
[  134.579802] sd 1:0:0:2: [sdc] Spinning up disk...
[  135.602397] ......
[  141.707017] sd 1:0:0:1: [sdb] Spinning up disk...
[  151.346332] .ready
[  151.353990] sd 1:0:0:2: [sdc] 524288 512-byte logical blocks: (268 MB/256 MiB)
[  151.361560] sd 1:0:0:2: [sdc] Write Protect is off
[  151.361566] sd 1:0:0:2: [sdc] Mode Sense: 99 00 00 08
[  151.368868] sd 1:0:0:2: [sdc] Write cache: disabled, read cache: enabled, doesn't support DPO or FUA
[  151.428485]  sdc: sdc1
[  151.465364] sd 1:0:0:2: [sdc] Attached SCSI removable disk
[  152.178231] .....ready
[  156.535115] sd 1:0:0:1: [sdb] 173456 512-byte logical blocks: (88.8 MB/84.7 MiB)
[  156.606445]  sdb: sdb1

Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 drivers/usb/storage/initializers.c | 27 +++++++++++++++++++++++++++
 drivers/usb/storage/initializers.h |  2 ++
 drivers/usb/storage/unusual_devs.h |  5 +++++
 3 files changed, 34 insertions(+)

diff --git a/drivers/usb/storage/initializers.c b/drivers/usb/storage/initializers.c
index f8f9ce8dc710..089d67e99aa9 100644
--- a/drivers/usb/storage/initializers.c
+++ b/drivers/usb/storage/initializers.c
@@ -44,6 +44,33 @@ int usb_stor_euscsi_init(struct us_data *us)
 	return 0;
 }
 
+/* Function to get the maximum LUN (Logical Unit number) from Ratoc. */
+int usb_stor_ratoc_u2scx_init(struct us_data *us)
+{
+	int i, result;
+	uint8_t *idmap = (uint8_t *)us->iobuf;
+
+	result = usb_stor_control_msg(us, us->recv_ctrl_pipe,
+					0xe6, USB_DIR_IN | USB_TYPE_VENDOR |
+					USB_RECIP_INTERFACE,
+					0x0, 0x0, idmap, 8, 5 * HZ);
+
+	if (result < 0) {
+		usb_stor_dbg(us, "fetching max lun failed: %d\n", result);
+		return result;
+	}
+
+	for (i = 0; i < 7; i++) {
+		if (idmap[i] == 0xff)
+			break;
+	}
+
+	if (i == 0)
+		return -EIO;
+
+	us->max_lun = i - 1;
+	return 0;
+}
 /*
  * This function is required to activate all four slots on the UCR-61S2B
  * flash reader
diff --git a/drivers/usb/storage/initializers.h b/drivers/usb/storage/initializers.h
index 2dbf9c7d9749..b3ad7bfadf41 100644
--- a/drivers/usb/storage/initializers.h
+++ b/drivers/usb/storage/initializers.h
@@ -37,3 +37,5 @@ int usb_stor_ucr61s2b_init(struct us_data *us);
 
 /* This places the HUAWEI E220 devices in multi-port mode */
 int usb_stor_huawei_e220_init(struct us_data *us);
+
+int usb_stor_ratoc_u2scx_init(struct us_data *us);
diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 1cd9b6305b06..46b95944533c 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -2372,6 +2372,11 @@ UNUSUAL_DEV( 0xed10, 0x7636, 0x0001, 0x0001,
 		"Digital MP3 Audio Player",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL, US_FL_NOT_LOCKABLE ),
 
+UNUSUAL_DEV(0x0584, 0x0222, 0x0000, 0xffff,
+		"Ratoc",
+		"U2SCX USB SCSI converter",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_ratoc_u2scx_init, 0),
+
 /* Unusual uas devices */
 #if IS_ENABLED(CONFIG_USB_UAS)
 #include "unusual_uas.h"
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200202093750.4439-3-svens%40stackframe.org.
