Return-Path: <usb-storage+bncBDY3NC743AGBBXPOVTZAKGQENXJWLNA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 25557161E5A
	for <lists+usb-storage@lfdr.de>; Tue, 18 Feb 2020 02:01:19 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id e26sf11363686qvb.4
        for <lists+usb-storage@lfdr.de>; Mon, 17 Feb 2020 17:01:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581987678; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/VVRTUaSfQVNwSVvGUDEnL750rV7EtltmNvtHiToxfYY3k2dU9i+hKs8LPPyJDo+f
         1W5LcpeQVi4xsxk2J9sOHZ/WoAzwQ71BqQqHFIbzL6xAMCFcIMqH4aD7J40P45ZP9dtk
         sAMnfh+Iqz4YWGeQazwJSDuqxdH92mrc9Y7TEqcvjPQ+SXptnjsvzbeczXG4QgrqRWl/
         +O6rLusgAa9ZgkCYRyQB6/q49ZLgY0MoubIqUyWyP7JL6kTOiR8wKNsFva+SSuTTbffk
         dPLTRTJKsSWqEWQGZTZyU6Zylr7u5Qn+qlSZzlyUL/mdQnQbwoKZXllFfExkPgYV/YkU
         95QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=8SHIC/4NlpPD/0K04v+1Ora4Q2V31YisTgDNSQYAxgk=;
        b=P0g01gKKJmwPOusIlNCnMGV4Jla2zmTjnBqH6hmVcxvn0YjpKxUns/eCw+W+dQHpK2
         rqKi26sfijRgiD53Mt2xCb605ipjQN1jWd+UC9AdQ7L1mZesOjweaQC9LqrTK9asdMfZ
         WcBBxZY6Up18grGe9rTKMkGQnEGpHlLkt3L5ANpuVBROd9PdC1pudXY+Vm6rFivP7tME
         e+d0KWL7HuR2qTFwbJzcGyvUcux2JIlilBZXbTirVol78hN4E83R67nN8WqCD2nF2YQV
         vL7y9zN/nmeIoebKrFYgcW51CJPVh3e8NPq9Eu8NUOI3D2ucwOrkLkSnIcvJwnFezYit
         xblQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.229 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8SHIC/4NlpPD/0K04v+1Ora4Q2V31YisTgDNSQYAxgk=;
        b=A8G/qUX1jr59JdZPwzsV0VUYyAIL3tSPzm8TQIw0EGqGAqwaUNkysQt7uCuWbKta/s
         +dFbo1uN4UXCxWfTdy7TEIhEuUcxUFogC0i4/czUMsNYd2iXE+L9FViK9pAVWNCtIkfu
         fKAAZ90QszRuqEd0bIieAK4y2hwKV63TDBFr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8SHIC/4NlpPD/0K04v+1Ora4Q2V31YisTgDNSQYAxgk=;
        b=aalu1pX3Ev4ok+o4pBxWLDHdqXuK1QVVKiSGHdqkbYP2kx0BI0rGwrX/gg7uOxnS46
         mUON2wR3nwEcpXmblWXQIFpZpF4zNW3yBNlKIliTU5SsKdZRl0z6eHTkVO6XXlJmrMEt
         8s1H+yy3LXeN5dWtNZoAA60wZDImaLAKFQgmEQ/sS7KJ1sa8fFZsrLnEERqXWLKkFahN
         UABx2bQxmY1DmujBLoeOqvp5VLYfwfDP/4Eh0XM41ygBpMu0KzLAJYZsQ0tFulXHhyxM
         PxR0V20g4BB7o+TkHsnmHyz6IoaRbJ+85A/Hfl7VlYQc424mBilIYnmviMCa/c3M3hIN
         Rj7w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAW2eAYaTh5IW72T1Y3N/UTbj3euFE6eHjvn7q19/1FBjhfBoTjU
	7ZusG28P6R0XZUDz/6Oe0mdWqg==
X-Google-Smtp-Source: APXvYqw5zW8CMwY2ihJXQGTtzmsb4n1GJb2EIqCblMMmjYkTDozfOEipCN6RKDveVIaZtYHB6W9Qfw==
X-Received: by 2002:ae9:e513:: with SMTP id w19mr16807417qkf.339.1581987677567;
        Mon, 17 Feb 2020 17:01:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5441:: with SMTP id h1ls2668074qvt.8.gmail; Mon, 17 Feb
 2020 17:01:17 -0800 (PST)
X-Received: by 2002:a05:6214:1494:: with SMTP id bn20mr15014169qvb.43.1581987677064;
        Mon, 17 Feb 2020 17:01:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581987677; cv=none;
        d=google.com; s=arc-20160816;
        b=KdxRURXqRYYNal3DzwXWouBHcL1niDKyuW83NohbxbAImWIRDXV46F3FW27mTsqbaE
         gk08ugc8uHAKcqbiC4Iw+tLMwbyY8IGkJUNPi4v7Z+bAkcBf2TvIo6p2h8ObttRKDVQf
         I4eCciy1wNnTsVHhUQIz4Ss9YGzumjvZsFFl5zS5WY9ikYHf/zQOwxHRgtiDd5S/yAjF
         yl+E3qFqta6xKyga1j5ovBQJW5Q4V4ahbsmlUAIqVNoH1Vv1836puvDw6JT/Z5dKxUic
         Dt+rI1zhT4XbdRz8W25m63YIcHB6ZGbngEipgZovi3E5d0Uno6nPfUhWotVMSvFz5MQ3
         0hOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=4S1qa0SP1Yc+3EJaaaB1txgKvWx6Olh7aJCKFjctZgk=;
        b=C2rRw5GW8HI4qbCysOF1zAP73zNpNivZ5ZE+yZPXDMfXK1kfiGdw9iUXWgtyz7RG5M
         lkzo4MKjGE5qrIu1ZLC5S4YYN7GS8AO3C5XsnMzS8aAjmpVMMQvUQEUokxaUewnSSrkG
         lntW9eAoThvZOgei7VwONBwp22f6U1Da/AOjrQ9Fqv4OMXkx/lbmun1IxcdlSMsdVUKH
         qMjkK5VzCWs4wMz0iZeSJErCRNV4/mEXk/Md8TWifAtSCB4VRFZqVvHYLh+N5KB9k9fF
         CIYPcQ29FI9muklZ4nOLObDRUQR3A9GYgeT+jXbYOLbHBKCQ8ixnCeJ+FwMt1f15jdDV
         WH2w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.229 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0229.hostedemail.com. [216.40.44.229])
        by mx.google.com with ESMTPS id z1si1063451qvx.193.2020.02.17.17.01.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 17:01:16 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.229 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.229;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 8D5D018028E97;
	Tue, 18 Feb 2020 01:01:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:2:41:355:379:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1593:1594:1605:1606:1730:1747:1777:1792:2393:2553:2559:2562:2828:2897:3138:3139:3140:3141:3142:3653:3865:3866:3867:3868:3871:4117:4321:4605:5007:6119:8603:8957:9010:10004:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12760:12986:13439:14394:14659:14664:21080:21433:21451:21627:21819:21939:30022:30054:30056:30070:30080:30090,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: sail37_624dff907f544
X-Filterd-Recvd-Size: 6226
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Tue, 18 Feb 2020 01:01:15 +0000 (UTC)
Message-ID: <cf13bd2d790ae3afbf5da55ea7bed12e00c5119d.camel@perches.com>
Subject: [usb-storage] [PATCH V2] usb-storage: Use const to reduce object data size
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org, 
 usb-storage@lists.one-eyed-alien.net, linux-kernel
 <linux-kernel@vger.kernel.org>
Date: Mon, 17 Feb 2020 16:59:54 -0800
In-Reply-To: <20200217094036.GA47231@kroah.com>
References: <60559197a1af9e0af7f329cc3427989e5756846f.camel@perches.com>
	 <20200217094036.GA47231@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.229 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

Make structs const to reduce data size ~20KB.

Change function arguments and prototypes as necessary to compile.

$ size (x86-64 defconfig pre)
   text	   data	    bss	    dec	    hex	filename
  12281	  10948	    480	  23709	   5c9d	./drivers/usb/storage/usb.o
    111	  10528	      8	  10647	   2997	./drivers/usb/storage/usual-tables.o

$ size (x86-64 defconfig post)
   text	   data	    bss	    dec	    hex	filename
  22809	    420	    480	  23709	   5c9d	drivers/usb/storage/usb.o
  10551	      0	      0	  10551	   2937	drivers/usb/storage/usual-tables.o

Signed-off-by: Joe Perches <joe@perches.com>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
---

V2: evolution is a terrible email client.
    no line wrapping this time...

 drivers/usb/storage/usb.c          | 10 +++++-----
 drivers/usb/storage/usb.h          |  5 +++--
 drivers/usb/storage/usual-tables.c |  6 +++---
 include/linux/usb_usual.h          |  2 +-
 4 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 9a79cd..94a6472 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -121,12 +121,12 @@ MODULE_PARM_DESC(quirks, "supplemental list of device IDs and their quirks");
 	.initFunction = init_function,	\
 }
 
-static struct us_unusual_dev us_unusual_dev_list[] = {
+static const struct us_unusual_dev us_unusual_dev_list[] = {
 #	include "unusual_devs.h"
 	{ }		/* Terminating entry */
 };
 
-static struct us_unusual_dev for_dynamic_ids =
+static const struct us_unusual_dev for_dynamic_ids =
 		USUAL_DEV(USB_SC_SCSI, USB_PR_BULK);
 
 #undef UNUSUAL_DEV
@@ -583,7 +583,7 @@ EXPORT_SYMBOL_GPL(usb_stor_adjust_quirks);
 
 /* Get the unusual_devs entries and the string descriptors */
 static int get_device_info(struct us_data *us, const struct usb_device_id *id,
-		struct us_unusual_dev *unusual_dev)
+		const struct us_unusual_dev *unusual_dev)
 {
 	struct usb_device *dev = us->pusb_dev;
 	struct usb_interface_descriptor *idesc =
@@ -933,7 +933,7 @@ static unsigned int usb_stor_sg_tablesize(struct usb_interface *intf)
 int usb_stor_probe1(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
-		struct us_unusual_dev *unusual_dev,
+		const struct us_unusual_dev *unusual_dev,
 		struct scsi_host_template *sht)
 {
 	struct Scsi_Host *host;
@@ -1092,7 +1092,7 @@ static struct scsi_host_template usb_stor_host_template;
 static int storage_probe(struct usb_interface *intf,
 			 const struct usb_device_id *id)
 {
-	struct us_unusual_dev *unusual_dev;
+	const struct us_unusual_dev *unusual_dev;
 	struct us_data *us;
 	int result;
 	int size;
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 85052c..5850d62 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -93,7 +93,8 @@ struct us_data {
 	struct mutex		dev_mutex;	 /* protect pusb_dev */
 	struct usb_device	*pusb_dev;	 /* this usb_device */
 	struct usb_interface	*pusb_intf;	 /* this interface */
-	struct us_unusual_dev   *unusual_dev;	 /* device-filter entry     */
+	const struct us_unusual_dev   *unusual_dev;
+						/* device-filter entry     */
 	unsigned long		fflags;		 /* fixed flags from filter */
 	unsigned long		dflags;		 /* dynamic atomic bitflags */
 	unsigned int		send_bulk_pipe;	 /* cached pipe values */
@@ -185,7 +186,7 @@ extern int usb_stor_post_reset(struct usb_interface *iface);
 extern int usb_stor_probe1(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
-		struct us_unusual_dev *unusual_dev,
+		const struct us_unusual_dev *unusual_dev,
 		struct scsi_host_template *sht);
 extern int usb_stor_probe2(struct us_data *us);
 extern void usb_stor_disconnect(struct usb_interface *intf);
diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
index cfd12e5..529512 100644
--- a/drivers/usb/storage/usual-tables.c
+++ b/drivers/usb/storage/usual-tables.c
@@ -40,7 +40,7 @@
 	.driver_info = (flags) \
 }
 
-struct usb_device_id usb_storage_usb_ids[] = {
+const struct usb_device_id usb_storage_usb_ids[] = {
 #	include "unusual_devs.h"
 	{ }		/* Terminating entry */
 };
@@ -68,7 +68,7 @@ struct ignore_entry {
 	.bcdmax = bcdDeviceMax,		\
 }
 
-static struct ignore_entry ignore_ids[] = {
+static const struct ignore_entry ignore_ids[] = {
 #	include "unusual_alauda.h"
 #	include "unusual_cypress.h"
 #	include "unusual_datafab.h"
@@ -92,7 +92,7 @@ int usb_usual_ignore_device(struct usb_interface *intf)
 {
 	struct usb_device *udev;
 	unsigned vid, pid, bcd;
-	struct ignore_entry *p;
+	const struct ignore_entry *p;
 
 	udev = interface_to_usbdev(intf);
 	vid = le16_to_cpu(udev->descriptor.idVendor);
diff --git a/include/linux/usb_usual.h b/include/linux/usb_usual.h
index 000a595..4a19ac3 100644
--- a/include/linux/usb_usual.h
+++ b/include/linux/usb_usual.h
@@ -92,6 +92,6 @@ enum { US_DO_ALL_FLAGS };
 #include <linux/usb/storage.h>
 
 extern int usb_usual_ignore_device(struct usb_interface *intf);
-extern struct usb_device_id usb_storage_usb_ids[];
+extern const struct usb_device_id usb_storage_usb_ids[];
 
 #endif /* __LINUX_USB_USUAL_H */


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cf13bd2d790ae3afbf5da55ea7bed12e00c5119d.camel%40perches.com.
