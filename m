Return-Path: <usb-storage+bncBD6LRVPZ6YGRBNPET7VQKGQEBJKVHZI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 8098BA1F68
	for <lists+usb-storage@lfdr.de>; Thu, 29 Aug 2019 17:41:42 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id a197sf3941810qkg.12
        for <lists+usb-storage@lfdr.de>; Thu, 29 Aug 2019 08:41:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567093301; cv=pass;
        d=google.com; s=arc-20160816;
        b=quve38y7+rSLrGt7mUAlxk29UCvvFLN7S+GppCms5ACSejlaSxwvXxsoFKkCo6LsEh
         B4r5ygm1yAzmCfauUkFkTeVOoTYf2QUMvRoHCkdzB7ttMoIOZCMaKyuc5SdjZsciCcC9
         Ep4Ssic/8HW2cYzQQbDahksX2SSbaKfhQ9p/Xjjio1ppSpzBwC4IQFw9F30LMOYqg7vG
         gG4dm+PlLgqXjgKGM7/T4Gz+7S/5+YCyNkUffHDpSBMRU9lENRoVvKxAJcDAK59oS60T
         LLxFPuTkU/OLKzZVFGmGXWLoYqZJ6508ogVAF7DOwBuAZXuBApsyXZPWEgzJ1V5UmXsp
         5g6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=wF/LyIYQ7HrRCH1nqC8KqJREe5YMumhdsaHr+M5AyQk=;
        b=kuIkd5X8QEX4dzNt/4yp+T+dFn58xRo1Ga29T16Y+VVpHPjsV9BbyRdiGcY09JkDe1
         QDqbzO4JncvdlwXtPaz1nF1T+RnOhoopo6fHOBYPrtTD1dTNxzDIojpwqmpOvzfxD0Pm
         Urn6S6urB7cDQlu21uxuWuEMA5YZOuuKoBJfbUe9/x50QqQlWaP2QaXOOFxtjDYR9b9Y
         Va1PRPuA5QxbnqS8LVY8NHZ06NmOexhoILtwPnbOm7+iJEI3Yh26MIckm3DncKLWjptc
         KwZjZbTm/cV32beB+i7gjqFuewEQJ2+tKPGddieoiIQiaYDegONrEqgfyANAdL/tdjjP
         aJug==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wF/LyIYQ7HrRCH1nqC8KqJREe5YMumhdsaHr+M5AyQk=;
        b=EclzOrbF6s0sA2Czz0dtBjqazahmCYvB0+99w22JQ44jIwuKj9Pe13YvM+KN1DnQuQ
         kK5oc26A6caYjfjbIC3Eem6TUVTVl8kYEtOukfNYE19Ju8fmOvzQdad9i9mPoTfOeChL
         weLeJwGlEKbahz1CObG9D6S5hpzlSIZdJ5PK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wF/LyIYQ7HrRCH1nqC8KqJREe5YMumhdsaHr+M5AyQk=;
        b=Tx+iI3/f17oJhbcoI3DHNWgynSHFIJm8uZDHtW4sq4ZIq+LtnbNYrabsDAOoJlINPL
         cWhvvpVXK7BcQE6cWhKDE+6AkePl9NugviOsRNol2fmBK/yEn8/YK5n91lPYZltwN5Zy
         RlggnkLkNrpyfj0snejpdm4PzWCT0CI4LKTLRyhsB/DmScNYdVNO3fdbUbrFQfLo6oJ1
         JfIyTip1/6dDbvJowURfdmYKzR1X1sY/h0HKYuPr44jlYMcl99emlZVy8JzR4lzqB/KS
         so1ZF2bTeri7EYb1Fc196trxixL/bE3Pru66QBo/nPAufBqLkhRdktnMCgsMmVBapC/P
         Tugg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXr6RSZXocyiDq3ZZ24Lsf7m/I88hDZ1KoYDr8giP6mrqRk3wRC
	weUx58ataIZ4HIfoiGSFq2naWQ==
X-Google-Smtp-Source: APXvYqzJX50dbo4hCx9q2EQL3bm8ASr4ZiMbyAIvKrpciWbuySSAK+w7+47RYG3xgpBslApcPidVCg==
X-Received: by 2002:ac8:94f:: with SMTP id z15mr10526082qth.233.1567093301294;
        Thu, 29 Aug 2019 08:41:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5502:: with SMTP id j2ls842297qtq.14.gmail; Thu, 29 Aug
 2019 08:41:40 -0700 (PDT)
X-Received: by 2002:ac8:4292:: with SMTP id o18mr10483962qtl.336.1567093300793;
        Thu, 29 Aug 2019 08:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567093300; cv=none;
        d=google.com; s=arc-20160816;
        b=uG1KzykMfPZWB0aEKWXrjbx2E1FgTFkYo7JPXwI6TPaEXHv+yWI6noHNRN4sY6e2WU
         Mn2EtcZaI6+2rKwC9OXo8D2cny0b/vimb3KIsdxw6qISfdGBksGZ9zYcagEanurXWBJz
         8kpczeeKoBUjQAZNQEUm7hb8FyhsRkX34/1WvI35moXSCjUY/DxC6tOA+DRmpJpQ8G7D
         A2Iym6CBLZ1T145LRnNZZJKOJ1U9H2ZAT0/QBhxON2fecZl50Y0h20cs/QBByvkfPWJ6
         Az7aatmJ695Oj67omdLkb7P1xlgh70eUgJJw8UnwXjnI3ErN5QqRKyuJ32i0dooew5AJ
         7pqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=wF/LyIYQ7HrRCH1nqC8KqJREe5YMumhdsaHr+M5AyQk=;
        b=T2emrls5M1HvLse7vlQ3Z0ldWzvmHJDybLLE1uPkfKJvKmxHNFf0iI5dQTBOk5knId
         Hq0zu0sT4KDQcloKUBuHSyubMOObhv8SS9jOkqyiOXRgQpqltK3yarZcBmk4yhwXcBki
         bYznm8Wwpzl3wneScikKKUMhgQ+a5SLS0bzAk2tUAFzUxDjaSEXIHUiJf0dkDfuIlce1
         bB1U4dqedIhb9dLK0uJDVqlDR4BFcu/6mQvBiVUwednpTtdogNWL3tcjd2sUyQFts5M1
         N64LV4A0H2VbACF3h7KhgLe3/RyXh4qxUGkFeMg94QocZ8VXa4134ZVBEUwC+0j0leOa
         jttg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id p134si2134940qke.312.2019.08.29.08.41.40
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 29 Aug 2019 08:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 2493 invoked by uid 2102); 29 Aug 2019 11:41:40 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 29 Aug 2019 11:41:40 -0400
Date: Thu, 29 Aug 2019 11:41:40 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Julius Werner <jwerner@chromium.org>
cc: Dan Williams <dcbw@redhat.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Kernel development list <linux-kernel@vger.kernel.org>, 
    USB list <linux-usb@vger.kernel.org>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH] usb: storage: Add ums-cros-aoa driver
In-Reply-To: <CAODwPW-+c6Ty_gqEFEaE0YhtutMR2tFnhEFOQre81uyM3mfMVA@mail.gmail.com>
Message-ID: <Pine.LNX.4.44L0.1908291038050.1306-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d707244@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d707244@rowland.harvard.edu
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

On Wed, 28 Aug 2019, Julius Werner wrote:

> (Thanks for the reviews... I'll get back to the kernel code details
> after double-checking if this can be done from userspace.)
> 
> > > Besides, what's wrong with binding to devices that weren't switched
> > > into AOA mode?  Would that just provoke a bunch of unnecessary error
> > > messages?
> 
> It's not about devices that aren't switched into AOA mode... it's
> about devices that are switched into AOA mode for other reasons
> (connecting to other Android apps). I don't think a kernel driver like
> that exists today, but it could be added, or people could use libusb
> to talk to an AOA device. AOA is just a general mechanism to talk to
> an Android app for whatever you want, and the descriptors sent during
> mode switch clarify what app it's talking to (and thereby what
> protocol it is using... it could be mass storage or it could be
> something entirely different). But a device switched into AOA mode for
> whatever app will always use that same well-known VID/PID (18d1:2d00).
> So if I just add that VID/PID to the IDs bound by the usb-storage
> driver, it would also grab a device that was mode-switched by
> userspace to talk to a completely different app. I need some way to
> make sure it only grabs the intended device, and there's no good
> identifier for that other than comparing the dev path to what you
> originally mode switched.

Okay, I see.  This sounds like a problem of communication between 
userspace and the kernel driver; you want to tell the driver to bind 
only to a specific device that is distinguishable only by its path.

In fact, there already is a way to do this in the kernel: write to the
sysfs "bind" file.  The difficulty is that you can't force a driver to
bind to an interface if it doesn't believe it is compatible with the
interface.  And if the driver believes it is compatible, it will
automatically attempt to bind with all such interfaces regardless of
their path.

Perhaps what you need is a usb_device_id flag to indicate that the 
entry should never be used for automatic matches -- only for matches 
made by the user via the "bind" file.  Greg KH would probably be 
willing to accept a new USB_DEVICE_ID_MATCH_NO_AUTO flag, which 
could be included in your unusual_devs.h entries.

> > > > +     /*
> > > > +      * Only interface 0 connects to the AOA app. Android devices that have
> > > > +      * ADB enabled also export an interface 1. We don't want it.
> > > > +      */
> > > > +     if (us->pusb_intf->cur_altsetting->desc.bInterfaceNumber != 0)
> > > > +             return -ENODEV;
> > >
> > > Do you really need this test?  What would go wrong if you don't do it?
> 
> Yes, otherwise two separate usb-storage instances bind to the two
> interfaces. The second interface is meant for a special ADB debugging
> protocol and will not respond at all to USB mass storage packets, so
> eventually the first request to it times out and
> usb_stor_invoke_transport() will do a port reset to recover. That also
> kills the first interface asynchronously even though it was working
> fine.

This isn't an issue if you rely on sysfs-directed binding.  You write 
the name of the specific interface to the "bind" file.

> > > IMO the userspace approach would be better, unless you can provide a
> > > really compelling argument for why it won't suffice.
> 
> Well... okay, let me think through that again. I just found the new_id
> sysfs API that I wasn't aware of before, maybe I could leverage that
> to bind this from userspace after doing the mode switch. But it looks
> like that only operates on whole devices... is there any way to force
> it to only bind one particular interface?

No.  But with the NO_AUTO flag in your match flags, this wouldn't 
matter.  Besides, the IDs you want to add aren't really dynamic -- they 
are fixed and known in advance.

Try something like the patch below (completely untested).  You'd
probably divide this up into two separate patches for submission: one
for the NO_AUTO flag and one to modify usb-storage.

Alan Stern


 drivers/usb/core/driver.c          |    4 ++++
 drivers/usb/storage/unusual_devs.h |   13 +++++++++++++
 drivers/usb/storage/usb.c          |    2 ++
 drivers/usb/storage/usual-tables.c |    6 ++++++
 include/linux/mod_devicetable.h    |    1 +
 include/linux/usb.h                |   20 ++++++++++++++++++++
 6 files changed, 46 insertions(+)

Index: usb-devel/drivers/usb/core/driver.c
===================================================================
--- usb-devel.orig/drivers/usb/core/driver.c
+++ usb-devel/drivers/usb/core/driver.c
@@ -685,6 +685,10 @@ int usb_match_one_id(struct usb_interfac
 	if (id == NULL)
 		return 0;
 
+	/* Don't match entries intended only for manual binding */
+	if (id->match_flags & USB_DEVICE_ID_MATCH_NO_AUTO)
+		return 0;
+
 	intf = interface->cur_altsetting;
 	dev = interface_to_usbdev(interface);
 
Index: usb-devel/drivers/usb/storage/unusual_devs.h
===================================================================
--- usb-devel.orig/drivers/usb/storage/unusual_devs.h
+++ usb-devel/drivers/usb/storage/unusual_devs.h
@@ -2183,6 +2183,19 @@ UNUSUAL_DEV(  0x1822, 0x0001, 0x0000, 0x
 		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_euscsi_init,
 		US_FL_SCM_MULT_TARG ),
 
+/* Reported by Julius Werner <jwerner@chromium.org> */
+UNUSUAL_DEV_NO_AUTO(  0x18d1, 0x2d00, 0x0000, 0xffff,
+		"Google",
+		"Chrome OS Recovery via AOA",
+		USB_SC_SCSI, USB_PR_BULK, NULL,
+		US_FL_SINGLE_LUN | US_FL_CAPACITY_OK),
+
+UNUSUAL_DEV_NO_AUTO(  0x18d1, 0x2d01, 0x0000, 0xffff,
+		"Google",
+		"Chrome OS Recovery via AOA (with ADB)",
+		USB_SC_SCSI, USB_PR_BULK, NULL,
+		US_FL_SINGLE_LUN | US_FL_CAPACITY_OK),
+
 /*
  * Reported by Hans de Goede <hdegoede@redhat.com>
  * These Appotech controllers are found in Picture Frames, they provide a
Index: usb-devel/drivers/usb/storage/usb.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/usb.c
+++ usb-devel/drivers/usb/storage/usb.c
@@ -104,6 +104,8 @@ MODULE_PARM_DESC(quirks, "supplemental l
 
 #define COMPLIANT_DEV	UNUSUAL_DEV
 
+#define UNUSUAL_DEV_NO_AUTO	UNUSUAL_DEV
+
 #define USUAL_DEV(use_protocol, use_transport) \
 { \
 	.useProtocol = use_protocol,	\
Index: usb-devel/drivers/usb/storage/usual-tables.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/usual-tables.c
+++ usb-devel/drivers/usb/storage/usual-tables.c
@@ -23,6 +23,12 @@
 
 #define COMPLIANT_DEV	UNUSUAL_DEV
 
+#define UNUSUAL_DEV_NO_AUTO(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
+		    vendorName, productName, useProtocol, useTransport, \
+		    initFunction, flags) \
+{ USB_DEVICE_VER_NO_AUTO(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
+  .driver_info = (flags) }
+
 #define USUAL_DEV(useProto, useTrans) \
 { USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, useProto, useTrans) }
 
Index: usb-devel/include/linux/mod_devicetable.h
===================================================================
--- usb-devel.orig/include/linux/mod_devicetable.h
+++ usb-devel/include/linux/mod_devicetable.h
@@ -158,6 +158,7 @@ struct usb_device_id {
 #define USB_DEVICE_ID_MATCH_INT_SUBCLASS	0x0100
 #define USB_DEVICE_ID_MATCH_INT_PROTOCOL	0x0200
 #define USB_DEVICE_ID_MATCH_INT_NUMBER		0x0400
+#define USB_DEVICE_ID_MATCH_NO_AUTO		0x0800
 
 #define HID_ANY_ID				(~0)
 #define HID_BUS_ANY				0xffff
Index: usb-devel/include/linux/usb.h
===================================================================
--- usb-devel.orig/include/linux/usb.h
+++ usb-devel/include/linux/usb.h
@@ -925,6 +925,9 @@ static inline int usb_make_path(struct u
 		(USB_DEVICE_ID_MATCH_DEV_LO | USB_DEVICE_ID_MATCH_DEV_HI)
 #define USB_DEVICE_ID_MATCH_DEVICE_AND_VERSION \
 		(USB_DEVICE_ID_MATCH_DEVICE | USB_DEVICE_ID_MATCH_DEV_RANGE)
+#define USB_DEVICE_ID_MATCH_DEVICE_AND_VERSION_NO_AUTO \
+		(USB_DEVICE_ID_MATCH_DEVICE | USB_DEVICE_ID_MATCH_DEV_RANGE | \
+		USB_DEVICE_ID_MATCH_NO_AUTO)
 #define USB_DEVICE_ID_MATCH_DEV_INFO \
 		(USB_DEVICE_ID_MATCH_DEV_CLASS | \
 		USB_DEVICE_ID_MATCH_DEV_SUBCLASS | \
@@ -961,6 +964,23 @@ static inline int usb_make_path(struct u
 	.idVendor = (vend), \
 	.idProduct = (prod), \
 	.bcdDevice_lo = (lo), \
+	.bcdDevice_hi = (hi)
+/**
+ * USB_DEVICE_VER_NO_AUTO - describe a specific usb device with a version range
+ * @vend: the 16 bit USB Vendor ID
+ * @prod: the 16 bit USB Product ID
+ * @lo: the bcdDevice_lo value
+ * @hi: the bcdDevice_hi value
+ *
+ * This macro is used to create a struct usb_device_id that matches a
+ * specific device, with a version range, but it is meant for manual binding
+ * only, not automatic binding.
+ */
+#define USB_DEVICE_VER_NO_AUTO(vend, prod, lo, hi) \
+	.match_flags = USB_DEVICE_ID_MATCH_DEVICE_AND_VERSION_NO_AUTO, \
+	.idVendor = (vend), \
+	.idProduct = (prod), \
+	.bcdDevice_lo = (lo), \
 	.bcdDevice_hi = (hi)
 
 /**

