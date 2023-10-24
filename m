Return-Path: <usb-storage+bncBCUJ7YGL3QFBBTPV36UQMGQEPWZZ4BA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD3E7D5980
	for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 19:11:42 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-581e7b03855sf1785758eaf.0
        for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 10:11:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698167501; cv=pass;
        d=google.com; s=arc-20160816;
        b=dXAaD9Kfqju3hAlzTERTKhEO3pIUOTnDlSBTOJYGd+2tFYWmtrcvKUEeRNwSV+YaOb
         IVBgQZWPQ4uTxkXBAcTvrzoKrPunZC+k1ZnWqy4uaZBUtEcnxYm+aT8mKJf8crBpVbUB
         HK5BbCDyFAShjuA4Du8W5EnIlmhfl8RWgCFmshcKkSUGCGsptiPVqR6sl5SmNBXI6FQd
         cTkzGuJdbNt7X7LiA0BPOz9A3zwQZ4TMNvDxEjj4WCd8mSmO0rkIo6awmz8sGntLo+9R
         K4RTm/DeNcQlpYPmGQ9acrAnPn04DXWce00vepgIOxr7Tkf/JLT1Du72QbVVQAdIhrUz
         hq1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2MySO4GZoeM1cVWM/d3moJzsnr/qgJH6fjiOuqkSXok=;
        fh=vKiCxiLdrAbrgKNAGM5vEdqbxtXvr2eAEBvG7fBtjBc=;
        b=azhD+bSeaMB/jqvaIwTINhjzqSCIdzW4neiTJ7TFtRp5gf9Bh7KHTKFiKV/brYiylg
         gTwlmQLLHZZqxHdnOwm9IiIO55ng2/oXlbpIr7SAEB1hCgT6gFVSIkLbLkrI59PqZOZ2
         +sg3QDgRrTxvrmiUoVFCYX500p4uATnlFA/cZYS5ay1t7mEul4TJuIquoLV2Iy/4rCUw
         wFDBJ+hnKR/ftPgwoN+E49+xa+ZkWAVc/YIbgd89I5ktZqb45BYeeIO8qg3LcRha40hG
         Fy0I0BpdX7Wdcw4czen/BH6MlalRoI0yHNq0JfC52MkYAXI50lwQvsWZHD9utE4q6Iof
         Kocw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="W/C1GcAH";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698167501; x=1698772301; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2MySO4GZoeM1cVWM/d3moJzsnr/qgJH6fjiOuqkSXok=;
        b=goAcdk1FEXAngBEJm624LAf0QDS1nxlwomxm8n8xL68g9SjxiQaKJKB3eO9m9SWV2o
         YN27/7IRJlDwbD5Nlj/LBwV7tGGUvoiIqZwAZZzSzvzwZhIa4nXPDXB1proLAWliMnvs
         qxh9ORMZyxWf2T0N7mVT6FOtj253WRhy4FWKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698167501; x=1698772301;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2MySO4GZoeM1cVWM/d3moJzsnr/qgJH6fjiOuqkSXok=;
        b=EhB2Rb45bvDQzCm0xTjBNNGjidkeXZCm9KN9gW2vbXZFowyNbf2ENjpOQCGZTKHz/6
         +EsA+0As/n7vGREhbOmd+LuOaf4UnCpt/ioaNJAYLDiBlKn2/iFcnjQEWr4OFovlZjsp
         j5UV1a32odDru4MIabJ6if89al0Esi0vASI2B0yoLPgwgcASAqrcC75JCRjjxZZdsDv8
         c0ne6A3hRX5JXWkj23IF9XnxqmuYI1G3FM8DSMeCKieDnlvsMpXP66q7smljzqZ6NMRY
         amg7a+UotuI4b+6r+HiPCOkPOr3C7A+NIn3WCAzhKffdu3kCqCU3JV+wwa0do90B8gYG
         9asg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyK9bJt/gFET8lg41sOkHg3fkarA/47N/184jtonAKAnBpEZD0a
	JHDl+1aU9QoryO7IgXqZjfl/1A==
X-Google-Smtp-Source: AGHT+IEmWRrRbkYQlyPfi1xO9b4KOXvPXmcZuMfh4s4M3mTanicaV0APThjp17xSljDHVnQLGQmnDQ==
X-Received: by 2002:a05:6870:9d98:b0:1e9:a8ff:67e3 with SMTP id pv24-20020a0568709d9800b001e9a8ff67e3mr15670886oab.4.1698167501683;
        Tue, 24 Oct 2023 10:11:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:d3c3:b0:1dd:4b2c:7730 with SMTP id
 l3-20020a056870d3c300b001dd4b2c7730ls1475529oag.0.-pod-prod-04-us; Tue, 24
 Oct 2023 10:11:41 -0700 (PDT)
X-Received: by 2002:a05:6871:28e:b0:1ea:b1c:b859 with SMTP id i14-20020a056871028e00b001ea0b1cb859mr15530611oae.35.1698167500797;
        Tue, 24 Oct 2023 10:11:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698167500; cv=none;
        d=google.com; s=arc-20160816;
        b=D/DI4zoP33gPipsI8xinVQlXBMk9dHTvXHFPsGfB13eS6djTU0sxS8K9ZEjSSO/f21
         OaLbITTtUTF02jUEPf4hZewFtITgt1MwHkmIZ9O8WfyKe1dZA0cZNn8hG0t4zV/qxt+C
         er+vq8VK+zzZygK3WZtas1e4T3jQkox5hnmWIiODgyJVzKyDhjA69s/6MzLJU1rBQgfD
         zgnU+qCa/PrmSYejo8IBg07if2my3idV/64N8GcitH/2r6VjWQKW5zf5IsDOTT+iI9cG
         CL/V7FMrma+KTu+MQs8EIOuhOcq7r+QyzIV4L37wYg5yOTn10P7IkwIqDQVjY/2xjaSG
         4f0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o1khzDX1keNEyWsPgh3vfJw+ISuLV9hIPkHVBRhgdOU=;
        fh=vKiCxiLdrAbrgKNAGM5vEdqbxtXvr2eAEBvG7fBtjBc=;
        b=OBzautMYe6LCx2h4lIHKOPAfhYDd7CHsMhosPHXyvjb1fmpx8c2OFxrEDIgy97Zcs3
         P49v/gmbyIAfC9PDz1tekilwH7ohAymdINVJocfk6S/nDCKDjzk169DmMc/bP3CITpqP
         5oKwKU0NzwDogUGqCszAlE4Kgdz+RK8XQFZWi4uSnprHrZV+VeDHCs0OX2L1Dxeqhrh2
         XtSuTCmo5xzdZ6xhkOtvnm8dXK+d15N3C8CUtNx6YFY7DQCJzQYVmXAKQWDnS7XxKD69
         4PvVcjcDFa3j/XiOAvMIO3I8yHLaDx2pa8OFXNvV13vePXqE/4ByPScXt+OTm20CgHVs
         VfKA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="W/C1GcAH";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id hb18-20020a056870781200b001e10371c2d9si3626970oab.41.2023.10.24.10.11.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 10:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B8F7061454;
	Tue, 24 Oct 2023 17:11:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 400C6C433C9;
	Tue, 24 Oct 2023 17:11:34 +0000 (UTC)
Date: Tue, 24 Oct 2023 19:11:31 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: "Li, Meng" <Meng.Li@windriver.com>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Message-ID: <2023102459-protector-frequency-1033@gregkh>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
 <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
 <2023102428-zit-quickness-9b73@gregkh>
 <5107f6ca-e972-4af1-a21d-6c95778969f3@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5107f6ca-e972-4af1-a21d-6c95778969f3@rowland.harvard.edu>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="W/C1GcAH";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Oct 24, 2023 at 11:58:37AM -0400, Alan Stern wrote:
> On Tue, Oct 24, 2023 at 05:45:40PM +0200, gregkh@linuxfoundation.org wrote:
> > On Tue, Oct 24, 2023 at 11:35:19AM -0400, Alan Stern wrote:
> > > Okay, that's a different matter.  In fact, I don't know what is supposed 
> > > to happen during a clean reboot.
> > 
> > Define "clean" :)
> 
> In this case, I mean what happens when you give the "reboot" command.

That's a userspace binary/script/whatever that can do loads of different
things not involving the kernel, so it all depends on the user's system
as to what will happen here.

Many "good" userspace implementation of reboot will go and sync and
unmount all mounted disks in the correct order, before the kernel is
told to reboot.

All we can do in the kernel is act on the reboot system call.

So perhaps the original poster here can see why his userspace isn't
correctly shutting down their storage devices?

> > reboot is a system thing that happens before the reboot syscall happens.
> > So which are we talking nabout here?
> > 
> > > Greg, do you know?  Should we take the time to disconnect all the USB 
> > > devices during a system shutdown?
> > 
> > In the past we have not.  And if we switch to do so, we might get some
> > complaints as we would now delaying the shutdown process to be longer
> > than before.
> 
> Yes, that's what I'm afraid of.
> 
> > > What happens with non-USB disk drives?  Or other removable devices?
> > 
> > It would have to come from "above" in the device tree, so does the PCI
> > or platform bus say that they should be shut down and their child
> > devices?
> 
> Well, the PCI layer invokes the HCD's ->shutdown callback.  But the 
> usb-storage driver and usbcore don't know this has happened, so they 
> start logging errors because they are suddenly unable to communicate 
> with a USB drive.  Meng Li is unhappy about these error messages.
> 
> Adding a shutdown callback of sorts to usb-storage allows the driver to 
> know that it shouldn't communicate with the drive any more, which 
> prevents the error message from appearing.  That's what this patch does.  
> 
> But that's all it does.  Basically it creates a layering violation just 
> to prevent some error messages from showing up in the system log during 
> a shutdown or reboot.  The question is whether we want to do this at 
> all, and if we do, shouldn't it be handled at the usbcore level rather 
> than just within usb-storage?

We should do this within the usb core if we care about it, but why did
the USB device suddenly go away before the USB storage driver was told
about it?  That feels like something else is pulling the power on the
device that is out-of-band here.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023102459-protector-frequency-1033%40gregkh.
