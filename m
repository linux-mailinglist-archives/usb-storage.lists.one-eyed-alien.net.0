Return-Path: <usb-storage+bncBDY3NC743AGBBLOITPZAKGQELR5CWPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D05915F299
	for <lists+usb-storage@lfdr.de>; Fri, 14 Feb 2020 19:17:19 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id ce2sf6187834qvb.23
        for <lists+usb-storage@lfdr.de>; Fri, 14 Feb 2020 10:17:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581704238; cv=pass;
        d=google.com; s=arc-20160816;
        b=REAL2sfEwt/SwR26dRz3viw3Go1fjCpkXQo8hjm2wNoFnClok+aGw+wE0HESYZe918
         Hzdxc1EqiXEgYDfdPC9AtweMvBnqXb2n8Y7rFMJM7CUH++DIF0gVsYp4oN0g1Agh+3W5
         cXSSA5FoM+JbSbdj8gjgrH9SsZwhnk/HFncciSvzIgCWrYnEn70vnHNAYUTnxr2lKGaX
         pMiwi07SCeA2qnLbZWgdmb3tCmtdTTBCLESeMO22CfmZTSrjLKfGSWX4o3MsSQVWjHLT
         jph4FVmr+B2FHpd3bpJGtMQsvTJvloDgDzLIP+/mQ1CYQqOpdQLs5UZGy7dZJTNw/Aw/
         0wtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:date:cc:to
         :from:subject:message-id:sender:dkim-signature;
        bh=yIwXO3+v5CBd07rVRz9IrHHdx4deduQPty9TrvrI+XI=;
        b=VHLk4feNPeQsSR8S7nu50/sNYDjmcPFoxF8i5Wzdx4AtAvPw+M5Y2lQ54Pgz+iN0b1
         it7XcguGve4NvYKhGan/M64cTSiONS99rF0MKRGk7Z2M6ZiCEbNtTnAD73Ss9skPBz8O
         7kBPLvRHotoYDjU3bhjEOlEkcWnQw8hp7pk+fCT3hvq52oOnTIG65iEyHhXjqEQJzN26
         jLDjF9WuAMrw6yM4AxpavehzzDjYPMIEZq1BzFQDkuAZTVp6LHKvpsoWi6O4ivcvd5VI
         hjoK7TI4vIEDfB0NluBlq474RM3fbVNZhORKVNFi5m2ySX2gWEyFnw8r8tBDw0ANg7+h
         Tdvw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.77 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yIwXO3+v5CBd07rVRz9IrHHdx4deduQPty9TrvrI+XI=;
        b=Kj8qWROkCfWbvJJfhdGUf4GwQevqCE9qLymip6md9FowEysCmr6S266Gr5RV/+KPAZ
         mY5Lenwa+yydOj+EwBNjG9YWFW+fFPiBa08rm5w7XIpF82BVNrRlu558aK3ZilqhW2zv
         XZ3w3IV7jijycUCoInrLmu7NglCS5SxDAmSg4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yIwXO3+v5CBd07rVRz9IrHHdx4deduQPty9TrvrI+XI=;
        b=jCHxdYMZOdf3HfaaJejgFTDIAkZqB+Vy/tJm5xhjljsvimgBvayyxfwuDTvm+mzWuT
         7qvuS2XrCWvHu0+GytAZs6eArkOOQWvGJxK/1J31BVFmLF1ocVmqG91KzzDEdeXOUmXA
         RDBphAiNXtoGvkcoH7c3TGiW9KtDsfEXTTrxuZWQqChN6qIv4kOTtcItcGZFZy1GZC+0
         DPHWkT1mWl1SD6xPuGHbZ8lljKXP2pFUNGhnEFjklH2tObvN5R2uJb0KBdhnFa1sys+W
         h1iFPLGiWs4aBh/FChOw9OWUeG80X/GJ6DBeTjA5IuqftvrhuspGaWojKk0vfVJtdGlg
         v6KQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUJe6pW7zZKF0NR4vkL2yS+t1fCuPdwdqqg5R11rdPy+1Y9UbNG
	8fV6fiTBMiQJDnNYdXnMSfVq2g==
X-Google-Smtp-Source: APXvYqwTifZhnBET9c7v0h7y8xwESMUn4JVk2mw3IJsR6BoYFfTdR/mvOvgq+vqS3WEgvDZsa0Gg0A==
X-Received: by 2002:a05:6214:8e:: with SMTP id n14mr3367369qvr.235.1581704237993;
        Fri, 14 Feb 2020 10:17:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:312d:: with SMTP id g42ls1073383qtb.8.gmail; Fri, 14 Feb
 2020 10:17:17 -0800 (PST)
X-Received: by 2002:ac8:3676:: with SMTP id n51mr3611841qtb.208.1581704237323;
        Fri, 14 Feb 2020 10:17:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581704237; cv=none;
        d=google.com; s=arc-20160816;
        b=guaYtiYs3cboJ9yPzorElYxPjOJ7NNlKMRSurnd7gVmi1w5/du2Z5ZXu7lE7C2S6rF
         tpkPJk08OYkusCndUwT47zR4/B1s1QeHIyNnDMLWQ2XuAcFGhDYJcdb/dy+/ztepAgo6
         3yMh7My0w51hvsgcXofpeT812r92CYqGiaX4hEAd1UFbMfAyLUr+rG3+a5h1/AJ3SdvK
         j755DYJUSOWHuj9ejCV6HfIia4CXC02asomGEAkmD/NM2qzV8qSQGLz//QzqXpRLHLRu
         BvQk43b3+BHsE1hdQzP0qHIZeXHk+/rQ3i9lW1qfbDh80AXuxxR13aZQtckyDoxvTG8s
         F73w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id;
        bh=/6sivu9K0zbXcv2pcwm3CF8Ckl6XH+P3xq7CjyEGwmE=;
        b=y7lmnz1UkuUMgwJ8ctUc5HdTIXyK5LyTwSDVF1qMftptjOUqpyp9XzFS7dpSIquq8c
         x/gFcilxavrO98un89jfkURc3a2iBKRkZYC9mBycjRzYBhG3ptR4/te8d4lRjQyllDP9
         U5v3NN7om0ttK7jRaDrx+dLuAhrlAb+1n7TgH6XlGaiofh/6pQn1P4qCEa4FfqPO6RE4
         /0O0vCFu1t8twgQqmzlN8gWn89iJTWXF/OESjP85bwCWAvCXeDK+tcRlH5LMlRjjQC2R
         Hp8qe0giygcGN+LEccKyUKdZuaPjjBkOlQlJYBxD4z/qBGBlhpapF0w06Wrv4DyFvGX2
         U5vQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.77 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0077.hostedemail.com. [216.40.44.77])
        by mx.google.com with ESMTPS id v5si3347786qkv.361.2020.02.14.10.17.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 10:17:17 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.77 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.77;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id AB4161822451B;
	Fri, 14 Feb 2020 18:17:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:2:41:355:379:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1535:1593:1594:1605:1606:1730:1747:1777:1792:2393:2553:2559:2562:2828:2897:3138:3139:3140:3141:3142:3653:3865:3866:3867:3868:4321:4605:5007:6119:8603:8957:9010:10004:10848:11026:11473:11658:11914:12043:12296:12297:12438:12555:12760:12986:13439:14394:14659:14664:21080:21433:21451:21627:21939:30054:30070:30080:30090,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: north37_224944e309a50
X-Filterd-Recvd-Size: 5967
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Fri, 14 Feb 2020 18:17:15 +0000 (UTC)
Message-ID: <60559197a1af9e0af7f329cc3427989e5756846f.camel@perches.com>
Subject: [usb-storage] [PATCH] usb-storage: Use const to reduce object data size
From: Joe Perches <joe@perches.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Date: Fri, 14 Feb 2020 10:15:57 -0800
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.77 is neither permitted nor denied by best guess
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
---

compile tested only

 drivers/usb/storage/usb.c          | 10 +++++-----
 drivers/usb/storage/usb.h          |  5 +++--
 drivers/usb/storage/usual-tables.c |  6 +++---
 include/linux/usb_usual.h          |  2 +-
 4 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 9a79cd..94a6472 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -121,12 +121,12 @@ MODULE_PARM_DESC(quirks, "supplemental list of
device IDs and their quirks");
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
 static int get_device_info(struct us_data *us, const struct
usb_device_id *id,
-		struct us_unusual_dev *unusual_dev)
+		const struct us_unusual_dev *unusual_dev)
 {
 	struct usb_device *dev = us->pusb_dev;
 	struct usb_interface_descriptor *idesc =
@@ -933,7 +933,7 @@ static unsigned int usb_stor_sg_tablesize(struct
usb_interface *intf)
 int usb_stor_probe1(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
-		struct us_unusual_dev *unusual_dev,
+		const struct us_unusual_dev *unusual_dev,
 		struct scsi_host_template *sht)
 {
 	struct Scsi_Host *host;
@@ -1092,7 +1092,7 @@ static struct scsi_host_template
usb_stor_host_template;
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
-	struct us_unusual_dev   *unusual_dev;	 /* device-filter
entry     */
+	const struct us_unusual_dev   *unusual_dev;
+						/* device-filter
entry     */
 	unsigned long		fflags;		 /* fixed flags from
filter */
 	unsigned long		dflags;		 /* dynamic atomic
bitflags */
 	unsigned int		send_bulk_pipe;	 /* cached pipe values
*/
@@ -185,7 +186,7 @@ extern int usb_stor_post_reset(struct usb_interface
*iface);
 extern int usb_stor_probe1(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
-		struct us_unusual_dev *unusual_dev,
+		const struct us_unusual_dev *unusual_dev,
 		struct scsi_host_template *sht);
 extern int usb_stor_probe2(struct us_data *us);
 extern void usb_stor_disconnect(struct usb_interface *intf);
diff --git a/drivers/usb/storage/usual-tables.c
b/drivers/usb/storage/usual-tables.c
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
@@ -92,7 +92,7 @@ int usb_usual_ignore_device(struct usb_interface
*intf)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/60559197a1af9e0af7f329cc3427989e5756846f.camel%40perches.com.
