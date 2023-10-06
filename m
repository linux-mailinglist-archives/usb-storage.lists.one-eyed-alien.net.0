Return-Path: <usb-storage+bncBDTNDO5RRYJRBIMHQCUQMGQEWE7HBAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 681E17BB82C
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 14:54:58 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-534543af820sf1866672a12.2
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696596898; cv=pass;
        d=google.com; s=arc-20160816;
        b=kyMrNz6DDBBpKCOWcUZr08pDp1ODZOjtWLqjYj6+9qLWlI27qNo3Zz5Jr45lzYyn2D
         N8QHGSHHlpao0U/6SlWK5WPcyKA+KKsS6Em7ABZHcw/vTN657zwGEn4Rr+waz0jiwbcj
         KHZyEPuHT5oYNTu2dRYPb6FNNNu9ClNbrgomVGAXpdtevK/bqlN5rTmpjyKKxx1xVfx/
         H/mvZm+HsmMoQlPMXWM9kGSNoutVV4IuH0IjqWttOcRD5kZpOdAMCpNLP7Wz+1cbtpWz
         JQTllTfASMT4SWlaxkpNko6pCsNqRgKly+EZ+TBQFb3uzTST0Xzod1gZX0yySlS/te/d
         52/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vX9ZuHgBW8ReEw/6zbkwk1a6exNFD+fhLkqXe3I1gqA=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=Kp0gluOtaw5ftc3vZl641yoDELLMeerXL2lUProhoWB7dZuxaYnwsWJQL8CAb4mvKF
         LVI0QM9n6Xl80NjoD/NwDcBDwk+NnUvpjAHIIgo8fDptOfGhwN9VPENzoU3cBUQvvMfn
         8xGsauKjk4/M8X2m7k8cnl76It163AG4TgZ0zkgOZtKBH1tOwvE52p7qujNEmnElWCZj
         KPFV7p3SrnDC/bRfTbhNHLb62VcExTwtfpjGI13mv0/Jqeq+0EQsBZNSnyCdEoFvdO6u
         +UG0URTmhqpQo/R8AaJLAIfasRAOLBIC9+VtI78HExoWyE2XVauZIl0oJPLDH3k8J6a9
         ZTCQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="nY3Fhz/v";
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696596898; x=1697201698; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vX9ZuHgBW8ReEw/6zbkwk1a6exNFD+fhLkqXe3I1gqA=;
        b=Si6SeabcSP6rn1PQrZbRbazFuzoCZCZ9aTDMSrJxE9931/ciTN6mbB6XKzD6WcOq86
         4fnr1EIqSVEmHkp450QD7taUrB13oT/FDlKBhbrvcd0Isu2oKO4McbzwFF0VAVSnZaEW
         Mannp8auUERId4w4J7tuR7bg5QbviDJphKrTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696596898; x=1697201698;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vX9ZuHgBW8ReEw/6zbkwk1a6exNFD+fhLkqXe3I1gqA=;
        b=uYTEMMNUMI54IbeXHBMAH8dQlzNn5iYUxlauqU9IE+G1VkG7/yj3jGZRgHOz9SJgZQ
         sMBJ6d6tRL16/2Gw7HDImdnGIjOjG792XgtqImL3S12Cczfkd7csdPzmCKJBqRIrHE0P
         lA38gy8pfvpdCJEAbK3bpPYy7+neu9w0YIymLfSNh9nlLSSc8VhnUzCXAOxJH9BkAU1D
         6WtTSSnjtFoFJ62SAgEo6eXb4f/muefs2/koWiWXjRydMPuw+kUfbY358qKY+tB+E41P
         F/+EwEwX98Ow4Y4bdxJmNubUdvcfIoeaFp3d6/UhGA8CbMcfi+4pMvZKOXdkFiGiZ69l
         vM6g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzIhD+LKhOuKxfUmbBCXiRVd7iVq3NXMPs0AHA9OXfDwAiI5Mi2
	O3qRDTrhhwghnOecqdDMIR+PYA==
X-Google-Smtp-Source: AGHT+IFmataMWIpvIba6Swfje0Di73kFUGpTonIUcdgqPfyD5x+y8DlduwLwf8343O6spRhNFQC2+w==
X-Received: by 2002:aa7:d64b:0:b0:530:a19b:175 with SMTP id v11-20020aa7d64b000000b00530a19b0175mr7383269edr.2.1696596898077;
        Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:c487:0:b0:534:7b4a:8d91 with SMTP id m7-20020aa7c487000000b005347b4a8d91ls971460edq.2.-pod-prod-06-eu;
 Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
X-Received: by 2002:a17:907:7787:b0:9ae:7206:963c with SMTP id ky7-20020a170907778700b009ae7206963cmr8337292ejc.15.1696596896880;
        Fri, 06 Oct 2023 05:54:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696596896; cv=none;
        d=google.com; s=arc-20160816;
        b=WKMPlNtNjWtu2qenkxyqRj9I8PENpm5TP/B1NXZ4Sgpk0JTE1w2LCuSRO3vEEV1Yru
         0/2FNKi4TWzxlPLBUT9phDI2F4+bmgfWmC67D0PnF1Wzqq0b7ZUx+Eg1U7WHRCwY/t6e
         Jz64DvqDuvtsas5bgYTYlJg1Co/tOSwA/SAoAg80MbibRdHIDdo8dEC7ci52umglULlB
         rmqqV8SQEw39QKpk1TFX+O4WHbydRiESzb6njt1tAgrey9FvvMmyvZyC6xF+ydZPzOUT
         sleXnqBH13WQ32Xz577eUx+lKDYK7+7ryoWjks1wyQKTx+XyxmqBGh/Tug2nXTDo3gEM
         sySA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iVEBic25aUxGUy5ujTcVQWFLs4hInZ0DtZ5uFx3eQBw=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=etNSWdkD+hLmJUdA9Af33aUVqvPgZIT31frQ/DmBjo/iQ4/n2961CN/uzrE3h6OH4/
         phSYIctLNYbOcw0gkA4d6lVTzjyaDX2azHzY7NldMd16q4Z/PFEt12uIxciyTzVz109C
         4DZiqMk8j5tOzSfMvPcqoXcoRPtWVo+2L5SePqMFhqWs/dSHeln4rFwN0hySVf+DuX6+
         HaxviGt9RnDO046ZupDhiLM5u+mogIcbTAVKr/NOSVvUjeeiOhaHtmi+HNnR3+yElSU/
         Zjz9cjfbjanhseNWBcz0xlyxIo6KdmMMpRPeo+BhuviDyU/9m2feVGN4CiFD1AlkuupB
         /ctg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b="nY3Fhz/v";
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id my31-20020a1709065a5f00b009b30677d149sor1510384ejc.14.2023.10.06.05.54.56
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Oct 2023 05:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:8a59:b0:9b2:e26f:3636 with SMTP id gx25-20020a1709068a5900b009b2e26f3636mr6928491ejc.13.1696596896246;
        Fri, 06 Oct 2023 05:54:56 -0700 (PDT)
Received: from sauvignon.fi.muni.cz (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id p26-20020a1709060dda00b0099bc08862b6sm2894660eji.171.2023.10.06.05.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:54:55 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	linux-block@vger.kernel.org,
	stern@rowland.harvard.edu,
	oneukum@suse.com,
	jonathan.derrick@linux.dev,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [RFC PATCH 2/6] usb-storage: make internal quirks flags 64bit
Date: Fri,  6 Oct 2023 14:54:41 +0200
Message-ID: <20231006125445.122380-3-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006125445.122380-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b="nY3Fhz/v";       spf=pass
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
already use all 32 bits.

(Following patches are needed to properly use driver_info
for 64-bit value.)

Signed-off-by: Milan Broz <gmazyland@gmail.com>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231006125445.122380-3-gmazyland%40gmail.com.
