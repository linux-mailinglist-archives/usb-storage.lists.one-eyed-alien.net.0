Return-Path: <usb-storage+bncBDTNDO5RRYJRBJEHQCUQMGQEDBXA5MQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x645.google.com (mail-ej1-x645.google.com [IPv6:2a00:1450:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FEB7BB82F
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 14:55:00 +0200 (CEST)
Received: by mail-ej1-x645.google.com with SMTP id a640c23a62f3a-9ae0601d689sf163033166b.0
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 05:55:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696596900; cv=pass;
        d=google.com; s=arc-20160816;
        b=gCsS5c+daHvVYuz6IkAAfj5XV1amZ4+AoKoC7vLw6cikI2g+IaRylb18IO8NDYPXMT
         zYReaNfnsB+b4d4h4C4Twrudp7MgShcS3BGbnDevCDASWFcJ7TRBRyh3FlNKwcv8W6/w
         Hpq9JTLo/iwycZODKLHFNTdO1nmeSEkbCd94R5MiDN7op8oEB96aGg9d11lXmQJPfvIC
         UQu3SKVewNrR0YqK46zadOpADRhmIGCRA7BeqSEhrSvcD8gwzRzSAN/APUn+tugIh7r0
         kVHE21bjG4jQIVkFO2KCGT7+AHVd/k02y89DEOZ3d4/sYb6Gtfalcz6yqfBaSTDnIHXC
         NLfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=j5YTP79jjorUbTxDNGI2KbKvl6UDRiGm6iBFigk16pM=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=SdYkvKPyHkdNfGb8K7sx8oAbatF13CCk+TOkJ0wUmSprgvBQ7zbGo042Dmw503I3Cu
         XMyPj9ghHW2s6rr/Wf0FHajxQKiNW8NUIlQtPImN95gVsQKt0hFXb5b/9DzZrIlOKPuF
         u0SRr6k1MVgmex+iE6XUWHDrjHVNx3DPz4DIeTntAgDF3GNOKPlQSYP1RBrR1ueSMjIc
         SxS22+fan2PbPL78ZltDqkR/k40XS+ckXECUDXFo9Nhk/0x678P/NyORMeOVZNVHWQQl
         JIq98t5cJEANtb5e2bPf5S5SLus62LXDmI6EdI+Hb/oXYl7Uab0yQ/ndD0XLwfcADkks
         do2Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=e+V5PX1r;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696596900; x=1697201700; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j5YTP79jjorUbTxDNGI2KbKvl6UDRiGm6iBFigk16pM=;
        b=AihUqkeQVYCtGrQXZuWQJnBBl1cs2T7hhiiGgQo6ZFbAOQsyFf35FxOPVcPRpnV5T4
         3a47Qyi4gY8no2VYkGFxLjqn70grVHpSh2jA+qi77027PLppoQnLbfXZq0VAf2VVi1hb
         osKS8YV1NrpI8Gn70l6eMAdks50vFinNj+1sk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696596900; x=1697201700;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j5YTP79jjorUbTxDNGI2KbKvl6UDRiGm6iBFigk16pM=;
        b=OLdd31oC/KYmwcGhF7K4tihAAobXxn+P77TwKwYHuH3IMxA8Yd/210dUspfc117Or/
         KQ76TreXMwrsCzw2cuofcJAcyW3nm3BaZ/L7ZPZLvKiZEqfFPDYDRQ6+8PWmeL14U4L9
         3NLD997JQo8MjKm5y0XaNEFwr6/5sJUWUQ8XvmKqo/YBnw99Rz2iLuh8f1pT16diIMtR
         HbizIL4tiduahTCfcpezYJB5SbkyGu2XeE3UsXE0j7Xy0WUG0EXqof0yQcgsgMZGxYKa
         hKXMztruVkkufpYfeoZAy4p2kfAvdZix7gKe3WcfsEU8KZSmHx2C21ZAFREpfX88fkaG
         CqWg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yx2uEPJXEBJl0wnqespE2ndSVhLHIHENjFEwsZ69i3hf1bQ/Qbo
	pfoJz6G1RacAEeJsq26QihzkFA==
X-Google-Smtp-Source: AGHT+IGFdp3jgHbdEYP76LLJcO78O2ntsvSzVIAMPia58594FoDnxI+zD04RgW0mi8ooMSyho5Oq5A==
X-Received: by 2002:a17:906:cd1:b0:9b2:b119:4909 with SMTP id l17-20020a1709060cd100b009b2b1194909mr6683466ejh.75.1696596900488;
        Fri, 06 Oct 2023 05:55:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:1607:b0:536:17f7:9f24 with SMTP id
 f7-20020a056402160700b0053617f79f24ls109745edv.0.-pod-prod-08-eu; Fri, 06 Oct
 2023 05:54:59 -0700 (PDT)
X-Received: by 2002:a17:906:5349:b0:9b2:8b14:7a20 with SMTP id j9-20020a170906534900b009b28b147a20mr7520041ejo.45.1696596899236;
        Fri, 06 Oct 2023 05:54:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696596899; cv=none;
        d=google.com; s=arc-20160816;
        b=v3U+FrvUkwID/q0xdki/JJyjaDFYXtric8oC1IqtY95FCFcmgAgHIbsVrfGCtLotkw
         SkiTUdDMtmWeSVP2hETAxONFTFBlMLDpF4o33BiAuB3YmdMKhSImJMdg9RutG15vwiyc
         5asnfynm1Kq8ug38sxxEsnsel0jMZ/3vnD5HY6Lm4tkdxPgwMl3Y6rNFEnDfXZvAzGNF
         Zwv5Tp/TBbp4w1TlI53fyhjuDtKXAOAPuP5jPtSNXtvJkKr6XLCGnWmS1vFpDGdVkL79
         aUxi5JUPhPO/nl2EUW2mZORV7UKJS25om/Znb7yyVrQaAre7pn1GcS4EhiZIO3yVNdty
         9SRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JvlLVhV61yey8O8YpbEqG2hEVjESCumTPs4mXO+vIE0=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=rAA4ZbrwWF5fUJfql/1NIyzr52pmXV7CQJipoBQfpgpocZsArlvIIjokcZ8Dndp+jq
         hk9pRILuc2rn42sDF4OMuACPaEftDdp11xkK3ij77ChChqxxs7scQVkDyP07i3eFv7Bk
         teXkt2m0/JPi7vaSzoZCN6S6Qm+v/PxhJrGj4Mguqr92BDeOxZTA2p/3L8Fg0175EzRi
         OVDw6TNDbjpVGw6tX74GS7C8BQpLR4Q+BY4OPEgnhztA8S2rd/5TfnOwH3HTcXF++cHT
         xcO393pB3a+Qv79YI6+/s7HTTOuBx9F4YEgxZbeOmYZPU9CBlYfR/pHZJMUATCcjP2VP
         CFlQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=e+V5PX1r;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id hg13-20020a1709072ccd00b009b298be8ae6sor1589301ejc.20.2023.10.06.05.54.59
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Oct 2023 05:54:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:5349:b0:9b2:8b14:7a20 with SMTP id j9-20020a170906534900b009b28b147a20mr7520029ejo.45.1696596898716;
        Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
Received: from sauvignon.fi.muni.cz (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id p26-20020a1709060dda00b0099bc08862b6sm2894660eji.171.2023.10.06.05.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	linux-block@vger.kernel.org,
	stern@rowland.harvard.edu,
	oneukum@suse.com,
	jonathan.derrick@linux.dev,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [RFC PATCH 5/6] usb-storage,uas,scsi: allow to pass
 through security commands (OPAL)
Date: Fri,  6 Oct 2023 14:54:44 +0200
Message-ID: <20231006125445.122380-6-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006125445.122380-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=e+V5PX1r;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch enables pass-through OPAL command for USB-attached storage
(which does not support UAS or SCSI security commands).
All common USB/SATA or USB/NVMe adapters I tested need this patch.

USB mass storage devices that do not support SECURITY IN/OUT SCSI
commands can support ATA12 pass-thru command.

Internal kernel implementation for OPAL interface currently supports
only SCSI SECURITY IN/OUT wrapper.
USB mass storage also turns off SCSI command enumeration, so SECURITY
IN/OUT in the SCSI layer will be disabled.

Note: sedutils and some other OPAL tools already use ATA-12 pass-thru.

This patch
 - enables SCSI security flag for USB mass storage and UAS device by default.

 - adds an optional wrapper to the SCSI layer for the ATA-12 pass-thru
   command as an alternative if SECURITY IN/OUT is unavailable.

In short, the patch runs these steps:
  1) USB drives (mass-storage, UAS) enables security driver flag by default
     if not disabled by quirk
  2) SCSI device enumerates SECURITY IN/OUT support. If detected,
     SECURITY ON/OUT wrapper is used (as in the current code).
     If not, new ATA12 pass-thru wrapper is used instead.
  3) SED OPAL code tries OPAL discovery command for device. If it receives
     correct reply, OPAL is enabled for the device.

With the changes above, the TCG OPAL support works with USB adapters
that support the ATA-12 command. As kernel OPAL code runs discover
commands on initialization, on devices that do not support pass-through,
OPAL remains disabled.

The patch also adds a quirk flag to disable security commands for particular
devices if firmware is buggy.

Signed-off-by: Milan Broz <gmazyland@gmail.com>
---
 drivers/scsi/sd.c              | 33 +++++++++++++++++++++++++++++++--
 drivers/usb/storage/scsiglue.c |  4 ++++
 drivers/usb/storage/uas.c      |  5 +++++
 drivers/usb/storage/usb.c      |  5 ++++-
 include/linux/usb_usual.h      |  2 ++
 5 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 83b6a3f3863b..3782556cb461 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -686,6 +686,32 @@ static int sd_sec_submit(void *data, u16 spsp, u8 secp, void *buffer,
 			       &exec_args);
 	return ret <= 0 ? ret : -EIO;
 }
+
+static int sd_ata12_submit(void *data, u16 spsp, u8 secp, void *buffer,
+		size_t len, bool send)
+{
+	struct scsi_disk *sdkp = data;
+	struct scsi_device *sdev = sdkp->device;
+	u8 cdb[12] = { 0, };
+	const struct scsi_exec_args exec_args = {
+		.req_flags = BLK_MQ_REQ_PM,
+	};
+	int ret;
+
+	cdb[0] = ATA_12;
+	cdb[1] = (send ? 5 /* ATA_PROTOCOL_PIO_DATA_IN */ : 4 /* ATA_PROTOCOL_PIO_DATA_OUT */) << 1;
+	cdb[2] = 2 /* t_length */ | (1 << 2) /* byt_blok */ | ((send ?  0 : 1) << 3) /* t_dir */;
+	cdb[3] = secp;
+	put_unaligned_le16(len / 512, &cdb[4]);
+	put_unaligned_le16(spsp, &cdb[6]);
+	cdb[9] = send ? 0x5e /* ATA_CMD_TRUSTED_SND */: 0x5c /* ATA_CMD_TRUSTED_RCV */;
+
+	ret = scsi_execute_cmd(sdev, cdb, send ? REQ_OP_DRV_OUT : REQ_OP_DRV_IN,
+			       buffer, len, SD_TIMEOUT, sdkp->max_retries,
+			       &exec_args);
+	return ret <= 0 ? ret : -EIO;
+}
+
 #endif /* CONFIG_BLK_SED_OPAL */
 
 /*
@@ -3699,8 +3725,11 @@ static int sd_probe(struct device *dev)
 		goto out;
 	}
 
-	if (sdkp->security) {
-		sdkp->opal_dev = init_opal_dev(sdkp, &sd_sec_submit);
+	if (sdp->security_supported) {
+		if (sdkp->security)
+		    sdkp->opal_dev = init_opal_dev(sdkp, &sd_sec_submit);
+		else
+		    sdkp->opal_dev = init_opal_dev(sdkp, &sd_ata12_submit);
 		if (sdkp->opal_dev)
 			sd_printk(KERN_NOTICE, sdkp, "supports TCG Opal\n");
 	}
diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index c54e9805da53..ef93813a2049 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -209,6 +209,10 @@ static int slave_configure(struct scsi_device *sdev)
 		/* Do not attempt to use WRITE SAME */
 		sdev->no_write_same = 1;
 
+		/* Allow security commands (OPAL) passthrough */
+		if (!(us->fflags & US_FL_IGNORE_OPAL))
+			sdev->security_supported = 1;
+
 		/*
 		 * Some disks return the total number of blocks in response
 		 * to READ CAPACITY rather than the highest block number.
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index f6e293daabf4..9dfe8ea20134 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -865,6 +865,11 @@ static int uas_slave_configure(struct scsi_device *sdev)
 	/* Some disks cannot handle WRITE_SAME */
 	if (devinfo->flags & US_FL_NO_SAME)
 		sdev->no_write_same = 1;
+
+	/* Allow security commands (OPAL) passthrough */
+	if (!(devinfo->flags & US_FL_IGNORE_OPAL))
+		sdev->security_supported = 1;
+
 	/*
 	 * Some disks return the total number of blocks in response
 	 * to READ CAPACITY rather than the highest block number.
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index f3a53c3eeb45..04211ac803e4 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -478,7 +478,7 @@ void usb_stor_adjust_quirks(struct usb_device *udev, u64 *fflags)
 			US_FL_INITIAL_READ10 | US_FL_WRITE_CACHE |
 			US_FL_NO_ATA_1X | US_FL_NO_REPORT_OPCODES |
 			US_FL_MAX_SECTORS_240 | US_FL_NO_REPORT_LUNS |
-			US_FL_ALWAYS_SYNC);
+			US_FL_ALWAYS_SYNC | US_FL_IGNORE_OPAL);
 
 	p = quirks;
 	while (*p) {
@@ -567,6 +567,9 @@ void usb_stor_adjust_quirks(struct usb_device *udev, u64 *fflags)
 		case 'y':
 			f |= US_FL_ALWAYS_SYNC;
 			break;
+		case 'z':
+			f |= US_FL_IGNORE_OPAL;
+			break;
 		/* Ignore unrecognized flag characters */
 		}
 	}
diff --git a/include/linux/usb_usual.h b/include/linux/usb_usual.h
index 712363c7a2e8..0181c94d7d91 100644
--- a/include/linux/usb_usual.h
+++ b/include/linux/usb_usual.h
@@ -88,6 +88,8 @@
 		/* Cannot handle WRITE_SAME */			\
 	US_FLAG(SENSE_AFTER_SYNC, 0x80000000)			\
 		/* Do REQUEST_SENSE after SYNCHRONIZE_CACHE */	\
+	US_FLAG(IGNORE_OPAL, 0x100000000)			\
+		/* Security commands (OPAL) are broken */	\
 
 #define US_FLAG(name, value)	US_FL_##name = value ,
 enum { US_DO_ALL_FLAGS };
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231006125445.122380-6-gmazyland%40gmail.com.
