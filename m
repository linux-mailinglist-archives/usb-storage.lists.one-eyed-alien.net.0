Return-Path: <usb-storage+bncBAABB7HN7KLQMGQEONOVYXQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 6179E598FDB
	for <lists+usb-storage@lfdr.de>; Fri, 19 Aug 2022 00:02:38 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id l15-20020a05620a28cf00b006b46997c070sf2515521qkp.20
        for <lists+usb-storage@lfdr.de>; Thu, 18 Aug 2022 15:02:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660860157; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4HcYhTCmDfdgtzaEth7scgL/FLTgSPxAM4w6bn1yTn28j5Gulj5xskNojbnKSqP+N
         UJl+PqQW400KfI+RarJWFZiZV9yWIVzKeZ5OTPLEUkFUu0imhySdyz9ioi+utSPc0l0d
         F+NRhiofBK8Wn4riANfFxpwhjR7/yB42uz5nG4VFjGUnEPObz5ORKwHRK99z3aBt/kfo
         9swYusVh0JvNMUfsAHt4cxEcOCV63DgOU9a1ZkQAiwe58CAgg5cQBwWbKgQC2RUjLw18
         PUPbYR+SLbCfIGm/aYOe2qRYD6iMlWTJsAs4Zwzi327peMdHGYCJ9pxcS0iWQDcfeXQT
         nbEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=uytF9fQD+s2ermgZt8j9wMDChPH8HNHo73JzrxSgmag=;
        b=qSRnhHJNv2ctI58JUNX2krl1Led6k9zvk3UH05SRDTnb39GBNVu47SeNCwjG05xbjs
         gx4KTPAiWu51FEsMcT9Q2BYdtImrzMgYB89BuXaypKYxtPNCTv30vrAzknl0UYnH/eEC
         ZuAvtQLzCX3mBUn+733k3Yh3B9cQgDVnnRavKbrStb3HxAUCBcxaUUqnjlO4kvQyunVa
         xj58l2yK5Bjufo2M3dS+w3Ctk7Ck6MwdyE7OSYQ0gJ7KYsrl6jQEHDFHeWJNFPYGMi9P
         3e4U46Ua36yZ6LZSjhNQPBR8p1/Un+JGtW73wZ8whYHKUVOQB1OQxoLVzb9CGCfLh/gC
         qmTQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@sang-engineering.com header.s=k1 header.b="U/Op/ua1";
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc;
        bh=uytF9fQD+s2ermgZt8j9wMDChPH8HNHo73JzrxSgmag=;
        b=bBEWGXNBnINeYIHIpJ2PzTazkpXD2F7FO3iwedcjpypdn4r7idZx1T85H/EeZxqO1b
         Cr0hxB951XlnmmTzHs3PyoNIJ0JckxQoRZ3AKpdxWBI82QrjNgzz61SAlGQHQ3rWwCFP
         kaPgQ08VsUHTYMRiklaCd/ZFyo15CorOLX8JY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc;
        bh=uytF9fQD+s2ermgZt8j9wMDChPH8HNHo73JzrxSgmag=;
        b=4JTxBTiQ3F492t8QwhSKZHKkiX6k2RigpgCMtbqdIr5rU0lVa5daPSQeWCyXOMnZGB
         BUK2ZsMd6M541DrIweDZthD1FXDDnAQ8f/YQOrW+LytYxH0os+mLXgoqzeQJa13IFcmK
         XqTVqo+4z/JjwmDCeKI67cfq/+E/sdL0ZrujXH6dHwYZ0bMJ9+3M6jMaXUgfgmOz1cF4
         49j73e2QlbTjMfWkP6JJRGkUZV/V5P6vkIfUXKrvdhuqzB8W/GWJY1iG1aSzd1rHb/k3
         nL+Unp/Ze8PGjFVcHWPwSo6HddnHPQUmcxseXJz7Gb/ZiJb1QojT6FjXmmvMHdn5VPnN
         o/cg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo13Y3kKk8loITv9XBu8cI+qMqX6BMDTcRY587j/gzhRN3isSCtp
	H/HmRb2LdqOYshI5070gJczQeA==
X-Google-Smtp-Source: AA6agR6x1pNo9KWMdyH62BjlfJrGlRGzv4Cr+loChD5NR3LLtPCani13wIci9Q7Mc4k8OjVt80QvDw==
X-Received: by 2002:a05:622a:2c2:b0:343:645f:1601 with SMTP id a2-20020a05622a02c200b00343645f1601mr4449384qtx.349.1660860157011;
        Thu, 18 Aug 2022 15:02:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:b218:0:b0:474:6b1d:f2c9 with SMTP id x24-20020a0cb218000000b004746b1df2c9ls1491293qvd.1.-pod-prod-gmail;
 Thu, 18 Aug 2022 15:02:36 -0700 (PDT)
X-Received: by 2002:a05:6214:5198:b0:475:4e71:6fee with SMTP id kl24-20020a056214519800b004754e716feemr4264153qvb.75.1660860156273;
        Thu, 18 Aug 2022 15:02:36 -0700 (PDT)
Received: by 2002:a05:620a:4728:b0:6b9:b0bf:9f79 with SMTP id af79cd13be357-6bbb695d19cms85a;
        Thu, 18 Aug 2022 14:03:29 -0700 (PDT)
X-Received: by 2002:a5d:64ce:0:b0:220:6e13:c95 with SMTP id f14-20020a5d64ce000000b002206e130c95mr2482875wri.322.1660856608270;
        Thu, 18 Aug 2022 14:03:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660856608; cv=none;
        d=google.com; s=arc-20160816;
        b=qJ2kgtu6V85zUdiCD85m+SYCBzpBiNavFcCpNQduqbijOmiJxigoWVA33a6PCdoxwP
         d/uHbDdbLTd6+7hVLKy7P1r7huKBjLjOBf1ykPKMN3Met+zm4eBnfGYZwoySv8ljXZls
         rmCQExxidpJvYDAHLOFb9F1hel+Whc+Zb8+w+zpx1/BE7QcNLSanRmkxEFAx+w+New1v
         Jx2LzJWRL792KtPI5nN60dxpOn8ewBs8zr10cBwuccShlslJj1EyTYJmM0uYC40SnSem
         84lI2YQXK4rDLeKRh6DZQG0/kAURFM1yyY+AZqLfaPo+wER9KnHmWC9+htJE7b1svzgH
         Wtug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=s6G7WJiRnZlU7LRYSRAIbyNRVOt79rh9DTxmFH/xWtE=;
        b=YA12d/hwhNI6H5z9Fl/Be9ByW+A9rzfwAyihWUIFP5WuYbTfi7AOH+8RuHLCKfV4qL
         KrxPY79WgTPe4WgiwzlkbjMHuMZxbhvIOJUCJTBa5t+F+dM2CuDvpkAZftu27FmN+kR2
         KQDu24HKcB4HY/jcFEkyZ6CyTQM7EMq6dqLRK1VMdeqk6JEnAlFQzrXsvk/uangShT25
         pqSKXuoBkkgCZ8/F836LDwKkAUMVcaLBYIJ8qSUePzvmWs4jZ+nUf1R5x+VjB3o4uGdz
         WT1KXoi7K22kKQZvakqCthhqK4JdTkDbzTSSIDSwVjko7rTduqlJHlWjzSPtZ9lyOHTw
         UJHQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@sang-engineering.com header.s=k1 header.b="U/Op/ua1";
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
Received: from mail.zeus03.de (www.zeus03.de. [194.117.254.33])
        by mx.google.com with ESMTPS id m28-20020a056000181c00b00220879d4af3si1088881wrh.825.2022.08.18.14.03.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 14:03:28 -0700 (PDT)
Received-SPF: neutral (google.com: 194.117.254.33 is neither permitted nor denied by best guess record for domain of wsa+renesas@sang-engineering.com) client-ip=194.117.254.33;
Received: (qmail 3961700 invoked from network); 18 Aug 2022 23:01:16 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 18 Aug 2022 23:01:16 +0200
X-UD-Smtp-Session: l3s3148p1@DLdISIrmdvEucref
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-kernel@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Duncan Sands <duncan.sands@free.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH] usb: move from strlcpy with unused retval to strscpy
Date: Thu, 18 Aug 2022 23:01:15 +0200
Message-Id: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Original-Sender: wsa+renesas@sang-engineering.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@sang-engineering.com header.s=k1 header.b="U/Op/ua1";
       spf=neutral (google.com: 194.117.254.33 is neither permitted nor denied
 by best guess record for domain of wsa+renesas@sang-engineering.com) smtp.mailfrom=wsa+renesas@sang-engineering.com
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

Follow the advice of the below link and prefer 'strscpy' in this
subsystem. Conversion is 1:1 because the return value is not used.
Generated by a coccinelle script.

Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/usb/atm/usbatm.c               | 2 +-
 drivers/usb/core/devio.c               | 2 +-
 drivers/usb/gadget/function/f_fs.c     | 2 +-
 drivers/usb/gadget/function/f_uvc.c    | 2 +-
 drivers/usb/gadget/function/u_ether.c  | 8 ++++----
 drivers/usb/gadget/function/uvc_v4l2.c | 6 +++---
 drivers/usb/gadget/udc/omap_udc.c      | 2 +-
 drivers/usb/misc/usb251xb.c            | 6 +++---
 drivers/usb/storage/onetouch.c         | 2 +-
 drivers/usb/typec/tcpm/fusb302.c       | 2 +-
 drivers/usb/usbip/stub_main.c          | 2 +-
 11 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/usb/atm/usbatm.c b/drivers/usb/atm/usbatm.c
index 362217189ef3..1cdb8758ae01 100644
--- a/drivers/usb/atm/usbatm.c
+++ b/drivers/usb/atm/usbatm.c
@@ -1026,7 +1026,7 @@ int usbatm_usb_probe(struct usb_interface *intf, const struct usb_device_id *id,
 	/* public fields */
 
 	instance->driver = driver;
-	strlcpy(instance->driver_name, driver->driver_name,
+	strscpy(instance->driver_name, driver->driver_name,
 		sizeof(instance->driver_name));
 
 	instance->usb_dev = usb_dev;
diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
index b5b85bf80329..837f3e57f580 100644
--- a/drivers/usb/core/devio.c
+++ b/drivers/usb/core/devio.c
@@ -1434,7 +1434,7 @@ static int proc_getdriver(struct usb_dev_state *ps, void __user *arg)
 	if (!intf || !intf->dev.driver)
 		ret = -ENODATA;
 	else {
-		strlcpy(gd.driver, intf->dev.driver->name,
+		strscpy(gd.driver, intf->dev.driver->name,
 				sizeof(gd.driver));
 		ret = (copy_to_user(arg, &gd, sizeof(gd)) ? -EFAULT : 0);
 	}
diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
index e0fa4b186ec6..98dc2291e9a1 100644
--- a/drivers/usb/gadget/function/f_fs.c
+++ b/drivers/usb/gadget/function/f_fs.c
@@ -3700,7 +3700,7 @@ int ffs_name_dev(struct ffs_dev *dev, const char *name)
 
 	existing = _ffs_do_find_dev(name);
 	if (!existing)
-		strlcpy(dev->name, name, ARRAY_SIZE(dev->name));
+		strscpy(dev->name, name, ARRAY_SIZE(dev->name));
 	else if (existing != dev)
 		ret = -EBUSY;
 
diff --git a/drivers/usb/gadget/function/f_uvc.c b/drivers/usb/gadget/function/f_uvc.c
index 71669e0e4d00..f4f6cf75930b 100644
--- a/drivers/usb/gadget/function/f_uvc.c
+++ b/drivers/usb/gadget/function/f_uvc.c
@@ -430,7 +430,7 @@ uvc_register_video(struct uvc_device *uvc)
 	uvc->vdev.vfl_dir = VFL_DIR_TX;
 	uvc->vdev.lock = &uvc->video.mutex;
 	uvc->vdev.device_caps = V4L2_CAP_VIDEO_OUTPUT | V4L2_CAP_STREAMING;
-	strlcpy(uvc->vdev.name, cdev->gadget->name, sizeof(uvc->vdev.name));
+	strscpy(uvc->vdev.name, cdev->gadget->name, sizeof(uvc->vdev.name));
 
 	video_set_drvdata(&uvc->vdev, uvc);
 
diff --git a/drivers/usb/gadget/function/u_ether.c b/drivers/usb/gadget/function/u_ether.c
index 7887def05dc2..e06022873df1 100644
--- a/drivers/usb/gadget/function/u_ether.c
+++ b/drivers/usb/gadget/function/u_ether.c
@@ -144,10 +144,10 @@ static void eth_get_drvinfo(struct net_device *net, struct ethtool_drvinfo *p)
 {
 	struct eth_dev *dev = netdev_priv(net);
 
-	strlcpy(p->driver, "g_ether", sizeof(p->driver));
-	strlcpy(p->version, UETH__VERSION, sizeof(p->version));
-	strlcpy(p->fw_version, dev->gadget->name, sizeof(p->fw_version));
-	strlcpy(p->bus_info, dev_name(&dev->gadget->dev), sizeof(p->bus_info));
+	strscpy(p->driver, "g_ether", sizeof(p->driver));
+	strscpy(p->version, UETH__VERSION, sizeof(p->version));
+	strscpy(p->fw_version, dev->gadget->name, sizeof(p->fw_version));
+	strscpy(p->bus_info, dev_name(&dev->gadget->dev), sizeof(p->bus_info));
 }
 
 /* REVISIT can also support:
diff --git a/drivers/usb/gadget/function/uvc_v4l2.c b/drivers/usb/gadget/function/uvc_v4l2.c
index fd8f73bb726d..511f106f9843 100644
--- a/drivers/usb/gadget/function/uvc_v4l2.c
+++ b/drivers/usb/gadget/function/uvc_v4l2.c
@@ -67,9 +67,9 @@ uvc_v4l2_querycap(struct file *file, void *fh, struct v4l2_capability *cap)
 	struct uvc_device *uvc = video_get_drvdata(vdev);
 	struct usb_composite_dev *cdev = uvc->func.config->cdev;
 
-	strlcpy(cap->driver, "g_uvc", sizeof(cap->driver));
-	strlcpy(cap->card, cdev->gadget->name, sizeof(cap->card));
-	strlcpy(cap->bus_info, dev_name(&cdev->gadget->dev),
+	strscpy(cap->driver, "g_uvc", sizeof(cap->driver));
+	strscpy(cap->card, cdev->gadget->name, sizeof(cap->card));
+	strscpy(cap->bus_info, dev_name(&cdev->gadget->dev),
 		sizeof(cap->bus_info));
 	return 0;
 }
diff --git a/drivers/usb/gadget/udc/omap_udc.c b/drivers/usb/gadget/udc/omap_udc.c
index 61cabb9de6ae..b0567c63d754 100644
--- a/drivers/usb/gadget/udc/omap_udc.c
+++ b/drivers/usb/gadget/udc/omap_udc.c
@@ -2558,7 +2558,7 @@ omap_ep_setup(char *name, u8 addr, u8 type,
 
 	/* set up driver data structures */
 	BUG_ON(strlen(name) >= sizeof ep->name);
-	strlcpy(ep->name, name, sizeof ep->name);
+	strscpy(ep->name, name, sizeof(ep->name));
 	INIT_LIST_HEAD(&ep->queue);
 	INIT_LIST_HEAD(&ep->iso);
 	ep->bEndpointAddress = addr;
diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index 04c4e3fed094..87035ac09834 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -547,7 +547,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 		hub->boost_up = USB251XB_DEF_BOOST_UP;
 
 	cproperty_char = of_get_property(np, "manufacturer", NULL);
-	strlcpy(str, cproperty_char ? : USB251XB_DEF_MANUFACTURER_STRING,
+	strscpy(str, cproperty_char ? : USB251XB_DEF_MANUFACTURER_STRING,
 		sizeof(str));
 	hub->manufacturer_len = strlen(str) & 0xFF;
 	memset(hub->manufacturer, 0, USB251XB_STRING_BUFSIZE);
@@ -557,7 +557,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 			      USB251XB_STRING_BUFSIZE);
 
 	cproperty_char = of_get_property(np, "product", NULL);
-	strlcpy(str, cproperty_char ? : data->product_str, sizeof(str));
+	strscpy(str, cproperty_char ? : data->product_str, sizeof(str));
 	hub->product_len = strlen(str) & 0xFF;
 	memset(hub->product, 0, USB251XB_STRING_BUFSIZE);
 	len = min_t(size_t, USB251XB_STRING_BUFSIZE / 2, strlen(str));
@@ -566,7 +566,7 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 			      USB251XB_STRING_BUFSIZE);
 
 	cproperty_char = of_get_property(np, "serial", NULL);
-	strlcpy(str, cproperty_char ? : USB251XB_DEF_SERIAL_STRING,
+	strscpy(str, cproperty_char ? : USB251XB_DEF_SERIAL_STRING,
 		sizeof(str));
 	hub->serial_len = strlen(str) & 0xFF;
 	memset(hub->serial, 0, USB251XB_STRING_BUFSIZE);
diff --git a/drivers/usb/storage/onetouch.c b/drivers/usb/storage/onetouch.c
index 1db2eefeea22..01f3c2779ccf 100644
--- a/drivers/usb/storage/onetouch.c
+++ b/drivers/usb/storage/onetouch.c
@@ -201,7 +201,7 @@ static int onetouch_connect_input(struct us_data *ss)
 	onetouch->dev = input_dev;
 
 	if (udev->manufacturer)
-		strlcpy(onetouch->name, udev->manufacturer,
+		strscpy(onetouch->name, udev->manufacturer,
 			sizeof(onetouch->name));
 	if (udev->product) {
 		if (udev->manufacturer)
diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
index 96c55eaf3f80..ab89c014606e 100644
--- a/drivers/usb/typec/tcpm/fusb302.c
+++ b/drivers/usb/typec/tcpm/fusb302.c
@@ -151,7 +151,7 @@ static void _fusb302_log(struct fusb302_chip *chip, const char *fmt,
 
 	if (fusb302_log_full(chip)) {
 		chip->logbuffer_head = max(chip->logbuffer_head - 1, 0);
-		strlcpy(tmpbuffer, "overflow", sizeof(tmpbuffer));
+		strscpy(tmpbuffer, "overflow", sizeof(tmpbuffer));
 	}
 
 	if (chip->logbuffer_head < 0 ||
diff --git a/drivers/usb/usbip/stub_main.c b/drivers/usb/usbip/stub_main.c
index 77a5b3f8736a..e8c3131a8543 100644
--- a/drivers/usb/usbip/stub_main.c
+++ b/drivers/usb/usbip/stub_main.c
@@ -100,7 +100,7 @@ static int add_match_busid(char *busid)
 	for (i = 0; i < MAX_BUSID; i++) {
 		spin_lock(&busid_table[i].busid_lock);
 		if (!busid_table[i].name[0]) {
-			strlcpy(busid_table[i].name, busid, BUSID_SIZE);
+			strscpy(busid_table[i].name, busid, BUSID_SIZE);
 			if ((busid_table[i].status != STUB_BUSID_ALLOC) &&
 			    (busid_table[i].status != STUB_BUSID_REMOV))
 				busid_table[i].status = STUB_BUSID_ADDED;
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220818210116.7517-1-wsa%2Brenesas%40sang-engineering.com.
