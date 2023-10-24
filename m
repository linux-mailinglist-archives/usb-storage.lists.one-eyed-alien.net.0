Return-Path: <usb-storage+bncBD6LRVPZ6YGRBLFT4CUQMGQEAO3KYDY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DAE7D5B6A
	for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 21:23:25 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-41cbc7d2e58sf56968821cf.0
        for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 12:23:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698175404; cv=pass;
        d=google.com; s=arc-20160816;
        b=H+TgROyY2G3t01W78E2pCsW8Yah0VOq+OB1QepIXF6VEr09OPq8J5W5iCyZa1a17g2
         WjgZlojfhOMBkKCKu3hVeX1yDAHwz/O9w3/nU2I8g8FpD/XbWiQj/g3lxwhimkKi0oBw
         6LFeNXxX/kYKGVL/49mOHqHVKJlCF3Z2xqZuVWzQQ3aolTAF5TovlvgXLcFmtGJJvcSa
         DrTCtvlqyN7FIO5e+zeM+08Yj8PrDrL1xGhdN6Bc5yc7g5/GxdN09lJfWdx1or+TBvAY
         WhPVb47XGnn3NWY8RA7Bqui8Pywj3YDh93N0kXXCOgYWJ9twlYoDOWWF/DuR6rzEaxGW
         jJLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UeUDsRsWtoRUE2ZAGN2k/wOU4Nn08n6pY3we+KmYoaY=;
        fh=R7bZq2w8c5xv2AD1vfXo0jgdy9ffThbPPPFLhY5prN8=;
        b=CkaXmmhoCIte8hMFqCt41ZRUqfRaj6u6lFLAPVY8odNw4gb/WDx1j1JvG3a2de7YkL
         3RFxOEKgJwQHwxaX5pDWb1QjTTHYuYpCv3Vjq/6oeuc4y5/L0KAQhWXPCYQ65VE+P196
         IHBugJQv+Li7d4oopThc6bauSmNgUUYq4B3WzJmYa8zwCaQFrCtRI0//whyNuTL8bhtZ
         IYI7pkTxcOpW2th32RPsxAkVvZ+R+eCz7XEIsHPZnFJ/uBx6ux1ZPqgIEeBA2TLXHONg
         MeAQJt5vMjSecXnvCQ0rAUO7W84sUrhKF8DGjwNsHnueziUGFHw4sIK+Y4i3X9E2JjZk
         ozJQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698175404; x=1698780204; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UeUDsRsWtoRUE2ZAGN2k/wOU4Nn08n6pY3we+KmYoaY=;
        b=Yv9vBCPjYhsjK4O7OLktUR2UoYPs6h4Y9UdqLx5HBYxlnagcErMkPGUQbK41drYmNN
         euL6NQX9evQNJfG8KJ70CxeCyWvq+ltm80SjB773mwgyr8BtMI4JCq2A13hloALik2RU
         wXzejdiEV9x6aVLaX70lx1sSuJ43H0WZB5LBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698175404; x=1698780204;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UeUDsRsWtoRUE2ZAGN2k/wOU4Nn08n6pY3we+KmYoaY=;
        b=TdOijWI8lm8viztKh8pMcHnuVsgthM7w6k2dVK67dmUgiSFZIJL4AJCC048y4MW8+W
         fnh8erAkVeKz1zy2ZYF4sAiGJDnq7VThHqAQNB1bc0n1Gycvi3gAisCpasx51aI+BDrn
         4GxbQ+pMPIwt7K9BjbknpPb0wbz4ySxYexiv8U3ca5lTNPG/81TgVkmhzb89udKSR0HY
         RKbasydJvQhI3Sw2sldjQjypIrAk7xnANJQl1Ywj6XueLSCNqnJ/Eus7nWUtYXLR0Knz
         Pj5Bb6/G+qcuHaPjaaMDHXTMuLegYfZvFVTNJBXzrDkzfiVwiBjvv5KIC5k/vH2ZBEbt
         S9Qw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yy3zt0aquWs4tbldjusJYrweQVeFilK8Z2bCM1AZkeJikkEYk4d
	7O+x2nrdRY+uL/TfP9bFFOVBOg==
X-Google-Smtp-Source: AGHT+IGsBtQeyXWpKRNd+Bp4oolGgg+Bc25Pc/lEJ77r8TWzLgZivfBjHcASpZO7hWzpWtTstOo0sw==
X-Received: by 2002:ac8:4e85:0:b0:41e:1cc8:f280 with SMTP id 5-20020ac84e85000000b0041e1cc8f280mr8270481qtp.59.1698175404654;
        Tue, 24 Oct 2023 12:23:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:6658:0:b0:41c:d1a7:9109 with SMTP id j24-20020ac86658000000b0041cd1a79109ls2746441qtp.0.-pod-prod-04-us;
 Tue, 24 Oct 2023 12:23:23 -0700 (PDT)
X-Received: by 2002:a05:622a:86:b0:41c:cf78:a9df with SMTP id o6-20020a05622a008600b0041ccf78a9dfmr15802952qtw.46.1698175403710;
        Tue, 24 Oct 2023 12:23:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698175403; cv=none;
        d=google.com; s=arc-20160816;
        b=DugDHWZ4SXS6c0f8QI5w4FU1Hb4c/l1q3C/CisO8GykKEU4uRCkxvDVcpTyyzRaXMW
         7By/TeBiasrrOzJHBw0e/uyLvH4j8jlgmmLyQ289go8psDfnGdEpeRFe0FVORZDGRa/2
         lr/kMrwj1SAzlMN9Zbj3ghWD1sDI3OJjUdBwk/JqLxCRWyBLgKZKOI+9+h7EbqiDXO3/
         TMclKuA89FmiE7ZY7LQZkYX4/WFYe/bYDUsV7X+apI3V0cFnpRjt5ALHaUXkkQrqaXL1
         EZl3andgLKjvuMgv9k/hhJ1GwB0y54Y1SjEx9rE3fyOzPiZ75f+H8GtzJuYBcHCnPIr1
         NFow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=CK8dRUb1zvd0j89Gcn9c1/jjISx0NAwF87His/080EM=;
        fh=R7bZq2w8c5xv2AD1vfXo0jgdy9ffThbPPPFLhY5prN8=;
        b=CZmGoP58HsBfT7/dZ7bLlcZTd3CYBuJ5umg4s1gzhMrBOWcndfX23904EOb2ne7sKu
         46Q86wUPtiuA32/M6C3or/N1mngtJ5JBdy+NHE0EEJ/kUuNiO+ZGwzYE4cv10u+XGiJV
         jRy0RJmcihEIh6FaT5zcEVMFO6BlEQROe5gwR6O736ixw9TbUvJnaEu0RyvjCcrz2YtH
         rV7omrDccGyiLqTF+zrYPe3QyQcf/SulCwmqS0q68rxSkPChFkT7gSFJ4jR3zec/CSb0
         P3C1lkPx9gW6+m10L0X2KrF0wcklSkc1PrJbDJBte1Oot6DlI58xE4wIeRtadD6II0Pc
         8Vww==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id y12-20020a05622a120c00b0041987850ceesi7427007qtx.480.2023.10.24.12.23.23
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 24 Oct 2023 12:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 469860 invoked by uid 1000); 24 Oct 2023 15:23:23 -0400
Date: Tue, 24 Oct 2023 15:23:23 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Cc: "Li, Meng" <Meng.Li@windriver.com>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
  "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Message-ID: <a6bb88cd-0b89-4eb1-b90d-8ad633b7a8f2@rowland.harvard.edu>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
 <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
 <2023102428-zit-quickness-9b73@gregkh>
 <5107f6ca-e972-4af1-a21d-6c95778969f3@rowland.harvard.edu>
 <2023102459-protector-frequency-1033@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2023102459-protector-frequency-1033@gregkh>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Tue, Oct 24, 2023 at 07:11:31PM +0200, gregkh@linuxfoundation.org wrote:
> On Tue, Oct 24, 2023 at 11:58:37AM -0400, Alan Stern wrote:
> > On Tue, Oct 24, 2023 at 05:45:40PM +0200, gregkh@linuxfoundation.org wrote:
> > > On Tue, Oct 24, 2023 at 11:35:19AM -0400, Alan Stern wrote:
> > > > Okay, that's a different matter.  In fact, I don't know what is supposed 
> > > > to happen during a clean reboot.
> > > 
> > > Define "clean" :)
> > 
> > In this case, I mean what happens when you give the "reboot" command.
> 
> That's a userspace binary/script/whatever that can do loads of different
> things not involving the kernel, so it all depends on the user's system
> as to what will happen here.
> 
> Many "good" userspace implementation of reboot will go and sync and
> unmount all mounted disks in the correct order, before the kernel is
> told to reboot.

Even if the filesystems are unmounted, the kernel will still probe the 
drive periodically (once every few seconds) if it claims to have 
removable media.  Failure of those probes won't hurt anything, but it is 
likely to generate an error message.  I don't know if that's what's 
happening in this case, though.

> All we can do in the kernel is act on the reboot system call.
> 
> So perhaps the original poster here can see why his userspace isn't
> correctly shutting down their storage devices?

Meng, can you do this?  Maybe you can fix the problem by adding a script 
to be executed by the "reboot" command.  If the script writes to the 
"remove" attribute file in the drive's sysfs directory, that will unbind 
usb-storage from the device.  It should give the same result as your 
patch, for clean reboots.  It won't help "reboot -f", though.

> > > > What happens with non-USB disk drives?  Or other removable devices?
> > > 
> > > It would have to come from "above" in the device tree, so does the PCI
> > > or platform bus say that they should be shut down and their child
> > > devices?
> > 
> > Well, the PCI layer invokes the HCD's ->shutdown callback.  But the 
> > usb-storage driver and usbcore don't know this has happened, so they 
> > start logging errors because they are suddenly unable to communicate 
> > with a USB drive.  Meng Li is unhappy about these error messages.
> > 
> > Adding a shutdown callback of sorts to usb-storage allows the driver to 
> > know that it shouldn't communicate with the drive any more, which 
> > prevents the error message from appearing.  That's what this patch does.  
> > 
> > But that's all it does.  Basically it creates a layering violation just 
> > to prevent some error messages from showing up in the system log during 
> > a shutdown or reboot.  The question is whether we want to do this at 
> > all, and if we do, shouldn't it be handled at the usbcore level rather 
> > than just within usb-storage?
> 
> We should do this within the usb core if we care about it, but why did
> the USB device suddenly go away before the USB storage driver was told
> about it?  That feels like something else is pulling the power on the
> device that is out-of-band here.

The device went away because the HCD shut down the host controller, 
thereby stopping all USB communication.  The usb-storage driver wasn't 
informed because this all happened inside the HCD's PCI ->shutdown 
callback.  HCD shutdown doesn't do anything to the USB bus -- in 
particular, it doesn't remove the root hub or anything else -- it just 
turns off the host controller.

Since USB class-device drivers don't have ->shutdown callbacks (there is 
no shutdown() method in struct usb_driver), they don't know what's going 
on while a shutdown or reboot is in progress.  All they see is a bunch 
of errors.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a6bb88cd-0b89-4eb1-b90d-8ad633b7a8f2%40rowland.harvard.edu.
