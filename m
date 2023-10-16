Return-Path: <usb-storage+bncBDTNDO5RRYJRBF6LWOUQMGQEDBPQO5I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x646.google.com (mail-ej1-x646.google.com [IPv6:2a00:1450:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C3F7CA079
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 09:26:16 +0200 (CEST)
Received: by mail-ej1-x646.google.com with SMTP id a640c23a62f3a-9be601277c2sf119989566b.2
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 00:26:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697441176; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZB6ykK1nmZCzOoVwsKgW7CbokcE47cafU7ie0pOM9tAdKBhOPg4bRSYU2Vlm/X15e4
         DdlE9oAcBFdfh58KTILnCO5xaZFkVVv7rq9uK8Usqc7h19fOHT6miNQiSBUECLKyAD80
         HERA/xGiYivbV2pvIMOLwQDNf/Q8Q3mg4UBtuMhc06LxjbqmZnE06fbWTV46OF80TWkJ
         ULn2gAh1G5mQnLNsqNuv74XHgra1Y0UCVGQN3CWHPR9qNc4P/s91rZ7TByAWsyuamNan
         U4H4wefeI1QRiCyDeoBUC2JGT12GhP38LbNPmoOREnyMjTy635BP+YJIyZbOSkmOylto
         t9cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DajKzSuldo4X6HhUMGm78EAMBYcjByXu0qjuSSwBW4o=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=uKfki092zXLT8pLxeNHF6/IFgrFOlzhpt45ilGaDNokP8nLha1QfUGfqxU83+WWu0o
         u+Bv+LIjhMgjfdA4UbjmSeYx6R2q3uORPzeeg8tz5wcvJW3qY3/QOfsOBsqpFpa1v+M+
         pD/Bd22xCOtwGcKJmJGQcy1QN0+6YR1KnFUv6g5DIwJjYKbon8Qu1G+c0omEAEYGNslB
         6BiHtK4mTNLHLldb9A1OWGSpMaqJxlKnOhT2+nvNYkIYynT4YAUerXTFRwK4rqLsfqEy
         7r+kkzyCjf07rjnc72IO/gpYrf9VMnuOdFz7kSvABs/Mb9HM4Y/CkchMe51e7rQNimLF
         QnUA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=HOHP+pGF;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697441176; x=1698045976; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DajKzSuldo4X6HhUMGm78EAMBYcjByXu0qjuSSwBW4o=;
        b=NDy+AfAz0gXO7PT1idvtsf5y7tDbNR7hHS/CcEQflExCZsd31194OR5yuRSagR99/9
         2E+XSPuDi884vtxO3tiSMdpFWCJmsOuBO7rYdBt9fFhXJTDANzy1k3uljqATRkvG1BQG
         dE0HdqtrmWJLGHbmZ2Y276ofYn6+DDe6oKfGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697441176; x=1698045976;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DajKzSuldo4X6HhUMGm78EAMBYcjByXu0qjuSSwBW4o=;
        b=nZgHA94gVdb5m2AoItfKb3pCbgndHFdm56rsIo01n+lZJnXXhoB+EqbG5c4OKDxuoh
         dM3mwazj7HCc/RhS5sz/Nj2uxc7bGM42T/AOg6UrByNNFdNB7tVjacbQ54JrC3gTRHo1
         kEwAX898ZsHo8l42w01m2mvOpN2V0GWJCOZdkZrRydRrQSWMWJaRL/UOIew0pOd/+pwp
         8C8HV+KYIJbkBCOssqDQyz43juH+XbkRTnsWhRelS9O453djwJqdMuHey9jG2vF4+cW2
         tyHeoCpZWrngdMkzs3QhVsiV3MjfSo4mBTtEG3geFKZuN3SYZscMaQZcfRktg98TU+X+
         UUQA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyWPRjJqCbBgUL9zQy6x+KN9HgrUbNat0a4hkHhbkiaCP1XCTlh
	qQaKx5rnWPn4ZjZmNr5cHnk7/w==
X-Google-Smtp-Source: AGHT+IFGYTYYROSa6wHi86QsCogLs2YiHf91Al6N7NYmP4VzqmD3zXpxbXUxAja4rBh05E6NoLz4AQ==
X-Received: by 2002:a50:d7d9:0:b0:53e:6db7:ea63 with SMTP id m25-20020a50d7d9000000b0053e6db7ea63mr4597667edj.14.1697441176162;
        Mon, 16 Oct 2023 00:26:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:f07:b0:534:7b4a:8d91 with SMTP id
 i7-20020a0564020f0700b005347b4a8d91ls68752eda.2.-pod-prod-06-eu; Mon, 16 Oct
 2023 00:26:15 -0700 (PDT)
X-Received: by 2002:a17:907:7d8b:b0:9be:3c8e:1506 with SMTP id oz11-20020a1709077d8b00b009be3c8e1506mr5593775ejc.70.1697441174962;
        Mon, 16 Oct 2023 00:26:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697441174; cv=none;
        d=google.com; s=arc-20160816;
        b=V7WE/KoRfzgJodmqcx7dttTkJbTt2XgMG9EMHpU3kKsOvhQ5QDdoXt3djpATbAy8Hl
         +TtPxrPy2csEnoAGvURJ0HfaqRyCxM465+JVwqzLuHOe0WuTfNp2LmazYIJap8jf+yGF
         wY+bVMo0OnvtyVNVQFie151VxWtH9RMCC1ZhVuKXwHsUFUFd9jF7Ee71Yl7UluEJQdq2
         bkO/M42zsripz8rKhIiG5Mwk5BoD6m04jTpfrCnEV4IdTzRhOdTXSiz9rZFj+Pq8h0fU
         CHmfu/kx53BkigxgiySVlBFCait3QzSuUJ/G2F147Q1s61BeyTDOYRhvULZPXXjbXhhm
         OzKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9yn0kwXr1RVgMWT0A2+tKxIpUEAvRZLOMuNavXtkYMc=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=ePK3kf+SercLl9dOWeXRJtZWKf3QDVapAe0TBmDVrk7vAbl+yOq6f3paah6gGKaAIW
         I/mfrLXZMedUNXWTDMQQQxzmOZeNeodJIDd12dvRp2v1lWaRJt7iTrLEoMY+ySM0NKaA
         qfMv0+3iqVyno4G+TIqOkSZWRAbeu+SAZAy1YxZiIpHdiYyOVN3aXkRwHC4jnS1bkoQe
         mjL8HbjpSIUgZddTnFLc2Rs4lu+SGiveE9fmIP/ZuoLgsitIshqpR+CD28eUYoTw0jjg
         /1Wfmn23SKkUCUADiSI1P/50uYI7MNfK0i22i0Wg+fWrBxQyecUt/WPRQGoTKn+Fq+Aa
         1ZCw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=HOHP+pGF;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id fi16-20020a1709073ad000b009be13326c5dsor1045199ejc.1.2023.10.16.00.26.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Oct 2023 00:26:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:7804:b0:9ae:5fe1:ef01 with SMTP id la4-20020a170907780400b009ae5fe1ef01mr28363422ejc.37.1697441174403;
        Mon, 16 Oct 2023 00:26:14 -0700 (PDT)
Received: from sauvignon.fi.muni.cz ([2001:718:801:22c:bdcb:518:be8f:6a76])
        by smtp.gmail.com with ESMTPSA id n25-20020a17090673d900b0099297782aa9sm3399980ejl.49.2023.10.16.00.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 00:26:14 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [PATCH 2/7] usb-storage,uas: make internal quirks flags 64bit
Date: Mon, 16 Oct 2023 09:25:59 +0200
Message-ID: <20231016072604.40179-3-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016072604.40179-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=HOHP+pGF;       spf=pass
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

Switch internal usb-storage quirk value to 64-bit as quirks currently
use all 32 bits.

(Following patches are needed to use driver_info with a 64-bit
value properly.)

Signed-off-by: Milan Broz <gmazyland@gmail.com>
Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
---
 drivers/usb/storage/uas-detect.h   | 4 ++--
 drivers/usb/storage/uas.c          | 4 ++--
 drivers/usb/storage/usb.c          | 8 ++++----
 drivers/usb/storage/usb.h          | 4 ++--
 drivers/usb/storage/usual-tables.c | 2 +-
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
index d73282c0ec50..4d3b49e5b87a 100644
--- a/drivers/usb/storage/uas-detect.h
+++ b/drivers/usb/storage/uas-detect.h
@@ -54,12 +54,12 @@ static int uas_find_endpoints(struct usb_host_interface *alt,
 
 static int uas_use_uas_driver(struct usb_interface *intf,
 			      const struct usb_device_id *id,
-			      unsigned long *flags_ret)
+			      u64 *flags_ret)
 {
 	struct usb_host_endpoint *eps[4] = { };
 	struct usb_device *udev = interface_to_usbdev(intf);
 	struct usb_hcd *hcd = bus_to_hcd(udev->bus);
-	unsigned long flags = id->driver_info;
+	u64 flags = id->driver_info;
 	struct usb_host_interface *alt;
 	int r;
 
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 2583ee9815c5..696bb0b23599 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -37,7 +37,7 @@ struct uas_dev_info {
 	struct usb_anchor cmd_urbs;
 	struct usb_anchor sense_urbs;
 	struct usb_anchor data_urbs;
-	unsigned long flags;
+	u64 flags;
 	int qdepth, resetting;
 	unsigned cmd_pipe, status_pipe, data_in_pipe, data_out_pipe;
 	unsigned use_streams:1;
@@ -988,7 +988,7 @@ static int uas_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	struct Scsi_Host *shost = NULL;
 	struct uas_dev_info *devinfo;
 	struct usb_device *udev = interface_to_usbdev(intf);
-	unsigned long dev_flags;
+	u64 dev_flags;
 
 	if (!uas_use_uas_driver(intf, id, &dev_flags))
 		return -ENODEV;
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index bb1fbeddc5aa..d1ad6a2509ab 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -460,13 +460,13 @@ static int associate_dev(struct us_data *us, struct usb_interface *intf)
 #define TOLOWER(x) ((x) | 0x20)
 
 /* Adjust device flags based on the "quirks=" module parameter */
-void usb_stor_adjust_quirks(struct usb_device *udev, unsigned long *fflags)
+void usb_stor_adjust_quirks(struct usb_device *udev, u64 *fflags)
 {
 	char *p;
 	u16 vid = le16_to_cpu(udev->descriptor.idVendor);
 	u16 pid = le16_to_cpu(udev->descriptor.idProduct);
-	unsigned f = 0;
-	unsigned int mask = (US_FL_SANE_SENSE | US_FL_BAD_SENSE |
+	u64 f = 0;
+	u64 mask = (US_FL_SANE_SENSE | US_FL_BAD_SENSE |
 			US_FL_FIX_CAPACITY | US_FL_IGNORE_UAS |
 			US_FL_CAPACITY_HEURISTICS | US_FL_IGNORE_DEVICE |
 			US_FL_NOT_LOCKABLE | US_FL_MAX_SECTORS_64 |
@@ -605,7 +605,7 @@ static int get_device_info(struct us_data *us, const struct usb_device_id *id,
 		us->fflags &= ~US_FL_GO_SLOW;
 
 	if (us->fflags)
-		dev_info(pdev, "Quirks match for vid %04x pid %04x: %lx\n",
+		dev_info(pdev, "Quirks match for vid %04x pid %04x: %llx\n",
 				le16_to_cpu(dev->descriptor.idVendor),
 				le16_to_cpu(dev->descriptor.idProduct),
 				us->fflags);
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index fd3f32670873..97c6196d639b 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -95,7 +95,7 @@ struct us_data {
 	struct usb_interface	*pusb_intf;	 /* this interface */
 	const struct us_unusual_dev   *unusual_dev;
 						/* device-filter entry     */
-	unsigned long		fflags;		 /* fixed flags from filter */
+	u64			fflags;		 /* fixed flags from filter */
 	unsigned long		dflags;		 /* dynamic atomic bitflags */
 	unsigned int		send_bulk_pipe;	 /* cached pipe values */
 	unsigned int		recv_bulk_pipe;
@@ -192,7 +192,7 @@ extern int usb_stor_probe2(struct us_data *us);
 extern void usb_stor_disconnect(struct usb_interface *intf);
 
 extern void usb_stor_adjust_quirks(struct usb_device *dev,
-		unsigned long *fflags);
+		u64 *fflags);
 
 #define module_usb_stor_driver(__driver, __sht, __name) \
 static int __init __driver##_init(void) \
diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
index b3c3ea04c11c..a26029e43dfd 100644
--- a/drivers/usb/storage/usual-tables.c
+++ b/drivers/usb/storage/usual-tables.c
@@ -19,7 +19,7 @@
 		    vendorName, productName, useProtocol, useTransport, \
 		    initFunction, flags) \
 { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
-  .driver_info = (flags) }
+  .driver_info = (kernel_ulong_t)(flags) }
 
 #define COMPLIANT_DEV	UNUSUAL_DEV
 
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231016072604.40179-3-gmazyland%40gmail.com.
