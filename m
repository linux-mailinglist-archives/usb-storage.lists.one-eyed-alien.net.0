Return-Path: <usb-storage+bncBD6LRVPZ6YGRBEOXVCBAMGQETHEKRQQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F16F3375DE
	for <lists+usb-storage@lfdr.de>; Thu, 11 Mar 2021 15:39:15 +0100 (CET)
Received: by mail-qk1-x747.google.com with SMTP id u5sf15589530qkj.10
        for <lists+usb-storage@lfdr.de>; Thu, 11 Mar 2021 06:39:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615473554; cv=pass;
        d=google.com; s=arc-20160816;
        b=XiSvjgc20s/xpPNT4KWxaVCDW2qQzgG41M0DCFmBsi6CMOXGIU8pld3RvJMtOdgcpX
         3KD2m42Jlmrr7hWJ0Yu95BiKQq6LDhINxuvFfgrdYXcWU7L8nH1dRpcjr2rG3XJ0DqOn
         lvEqtU4QocWE1zLdXyCilZDapIxdsdngOJ+JK9LAiJjgCxVn60cv19/f2qhN+h7ZdCaK
         9l8aqX4uFccq10dG+HCn+meDJIqpqDJaFfAVBPwV3fyaLmah7IGs7qd9d8vfv4BO+/iT
         JaaOROGer/JqUEWCP5h9M2V9F1gyvc/SWjkKq34irHpU07Fory3yExJ/jwkYCzPACbv7
         Sm/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=r+9TEynCJ2Cnb1beVLbnFqKMXqVm8Ul7d74PFGWpP8Q=;
        b=bri5M4MRFKPD5PPG7IFMTFMIctAPkVCJX7CLgyYM3PFh0GhLZ4HOJwWrJLJ+xiDBs0
         V0zmDtOIqnmaYr+0qc1LdARo5Pi4XcgLWWnrzEzxeOa55zZFRgu97PlVDPAFxPLZPcdY
         soAeQIpGqRwRo6dIHS1HrH1ruYHtAI/mG1ODMYIGLXKn9iQTO/MoEMFaK1AEhIWKJPb6
         3tZrHFUITYVYZuCfaOmA6ZndvcqJ86LO2STCImEDFxSBi+v9G9FlAVyqmXNXvYfHG/vV
         anxl9FM1FVgdz+I7u/uGepu80y0eHmLFxl7sV5yvyeBakla+ioSZ9nBSBpAXIur38Co0
         WCeA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r+9TEynCJ2Cnb1beVLbnFqKMXqVm8Ul7d74PFGWpP8Q=;
        b=cXSBHrZeDfI+65jxynBrpMxb4l0FMxwetMEjVXOwbn7n0NmRLwFdbbDKS5k3XuuNA3
         vK34yQvOQit/YJA19cUFJ1H/MWkaVWYWH8Y7L9Gp7FVwqeYkwwh8J0MqbPkGheG+iRmh
         I/UroExuANszcFBvArQwgw57bHmMY9u81yA0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r+9TEynCJ2Cnb1beVLbnFqKMXqVm8Ul7d74PFGWpP8Q=;
        b=cl/iXULACaQcAYVZQoJ94J9nea+KahqYIxU9fwwI7GWfsiXSL2NtduVeTORrqbtT4f
         Ryha0IWD4puJCtrG6nX/CQk0SjTlAjOn6t8eJfuil6BjFozUyDppO61Ho3cvxFgXOqto
         xJSlNO09ZY0v3T1L3IpFr5BM+UJUcLtTGJoH4oXr3NLM7PIKq5b8AbAdUv1zjcWGk9j+
         1FfF/8gV2Hgco0JqHSTg7zrZVM2/hsxkJMxN8sv2+aLZ/CTfKScEJJBphdRcDeN/OJiY
         ostr/XYyaOelCf/zCpt8ZR5yxQb35T2HdUkSNpv0ZlpQfmrVaNaETTyTUXDqyiVpW603
         CoXQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531dnJk6eL7GtZ5ItKyn3YXmYEob5Kk7CRwEm7uCvPifwVwEV0Ba
	i3LPABHlzjCKZxHn6GxaIu/Odw==
X-Google-Smtp-Source: ABdhPJzQrn6AoRUxyKRwHs38M0s8ULRf6NJGFXm4lpVWPlmnH72pS8/jnfxsupPMK7eisDuhRmoyWg==
X-Received: by 2002:a37:9c92:: with SMTP id f140mr7552916qke.415.1615473554165;
        Thu, 11 Mar 2021 06:39:14 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2583:: with SMTP id fq3ls1444085qvb.2.gmail; Thu,
 11 Mar 2021 06:39:13 -0800 (PST)
X-Received: by 2002:a05:6214:a91:: with SMTP id ev17mr7833697qvb.59.1615473553385;
        Thu, 11 Mar 2021 06:39:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615473553; cv=none;
        d=google.com; s=arc-20160816;
        b=cSQ7vzDYcRdhsXQTwbZ7915SvcaVkut9bezIF9OVIW2YxQFMxoPw0Sy+hxJTFz2Uj0
         Z3xM1luFUcLKzhMz7uOe/0M+ka54rhr97ouSGYNT3ioMHGG+tL3XkoDREVfE9v/LSKGE
         fnPnG/XO4B02iaZ4T2qQEZNvhKDi/rm0RNI1n5pb46xsYn4S+zJgyhHw/sF9UNIy14X3
         oFm3k783lL94om5Epq/OkqnUgJtz1dDo8uAuAywTiMSvEX7faqqCb1OIOmxr3uwAsZyd
         4OvzYoZt9bCPHt6zZmTDNnHTlmkQw2XOaYYgEn+PSkc7uSK0r/Fg/rUPOGGoT/Rrjhi8
         WlVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=NZ/mPJB/obnW9dziZbzbbRTLXxFNMqiL3+TQMqHqZQk=;
        b=E4VqLpRx6Bxbul+QJr3Yzp3h+p6weo8rAVpf6Tuzd7595LDgoKbGJX/AEUBAIuLU0j
         0GDKKWed/K/D2ZqIO3i8fZcBGRcfALIEWyptc12OQIPERdv8zAYqheYKo/NunoRlOR6j
         vykjemuO7n5I07fRzR34zWoVofA9kzj9C4/k9oyy7mSDONISB2cgwOthfgNjloxq54SZ
         91oDqJh85KuMQkmqhHuwsUsKxDGqs+HhbvGHpf9I0NoeyOkjTU7DZNVRy7gQJHjsfI1d
         +raW2Oen6zRjjTTUbuNnC5vxV2kTjvusbABQ9NTtB8ACayKeUHqjsWnAZpjnNX2FU7tb
         BXyw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id v35si1531907qte.247.2021.03.11.06.39.13
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 11 Mar 2021 06:39:13 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 258323 invoked by uid 1000); 11 Mar 2021 09:39:12 -0500
Date: Thu, 11 Mar 2021 09:39:12 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Matthias Schwarzott <zzam@gentoo.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  hirofumi@mail.parknet.co.jp
Subject: Re: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <20210311143912.GA257360@rowland.harvard.edu>
References: <20210305191437.GC48113@rowland.harvard.edu>
 <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
 <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
 <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
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

On Thu, Mar 11, 2021 at 07:05:00AM +0100, Matthias Schwarzott wrote:
> Am 10.03.21 um 22:46 schrieb Alan Stern:
> > On Wed, Mar 10, 2021 at 09:56:04PM +0100, Matthias Schwarzott wrote:
> > > > What happens if you set the value to 1000 before running the test?
> > > > 
> > > I tested different values. At 1000 it still disconnects. At lower values it
> > > no longer does this.
> > > I tested 200 up to 900. Even 900 ms is good enough to keep it connected.
> > > 
> > > Btw. it is not a USB disconnect, but it just seems to plays medium ejected.
> > > 
> > > Out of interest I called "sg_start -v -l /dev/sde" after one of the failing
> > > experiments. That made the Kindle go back to connected state.
> > > 
> > > To me the above experiments show that enough TEST UNIT READY commands are
> > > needed in the 2 s after a SYNCHRONIZE CACHE.
> > 
> > So you have found the solution to your problem.  Congratulations!
> > 
> Thank you for your support.
> 
> For longterm I think it should work automatically.
> Some options I can think of (ordered by my preference):
> 
> 1. Kernel sends one or more TEST UNIT READY commands after every SYNCHRONIZE
> CACHE to a Kindle device. Regardless of triggered by kernel or by some user
> code via ioctl.
> 
> 2. Kernel automatically chooses a low enough value for events_poll_msecs if
> it detects kindle.
> 
> 3. udev rule is added that matches the Kindle and sets events_poll_msecs.
>   3a) SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk",
> ATTRS{product}=="Amazon Kindle", ATTR{events_poll_msecs}="900"
> 
>   3b) SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk",
> ATTRS{idVendor}=="1949", ATTRS{idProduct}=="0004",
> ATTR{events_poll_msecs}="900"
> 
> 4. Kernel sends one or more TEST UNIT READY commands after every SYNCHRONIZE
> CACHE to a device (without matching).
> 
> 
> I guess options 1 and 2 require a new entry in unusual_devs together with a
> (new?) quirk.

It's not that simple.  usb-storage does not create SCSI commands; it 
merely sends commands that it receives from other parts of the kernel.

> Option 3 requires to get a new rule into udev.
> And option 4 is ugly as it changes behaviour for usb-storage or scsi disk
> device.
> 
> I would prefer option 1 or 2.

I prefer option 3, although 2 would be acceptable in a pinch.  The main 
reason is because 3 is the only option that doesn't involve changing the 
kernel.  It's probably much easier to change a udev script.  (For 
example, that's something any user can quickly do themselves.)

> Do you know how high the overhead of having more TEST UNIT READY commands
> is? (=How much better option 1 is compared to option 2?)

Options 1 and 4 would be rather difficult to implement.  2 and 3 are a 
lot simpler.

The overhead of TEST UNIT READY is pretty small.  You can get an idea 
for yourself by looking at the timestamps in the annotated extract of 
the usbmon log that I sent back to you.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210311143912.GA257360%40rowland.harvard.edu.
