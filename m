Return-Path: <usb-storage+bncBD6LRVPZ6YGRBNFPQGUQMGQEP473DXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 591017BBF15
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 20:53:41 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-57beb33b454sf618897eaf.1
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 11:53:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696618420; cv=pass;
        d=google.com; s=arc-20160816;
        b=tMbzaT0hf6WVFC5Ey4z8GE0Ko1qLCW6vZO8dcvchOmIQFZaEce9zYkUMWoDeWhfqBD
         XJDzxJnIgbpSWhonDwVWmIYk6F2+Sr3PTGc9semikc1WJazUN5i+OySdcwrZ8L+Lr2qQ
         L6D/1WwG31GrXy7+tDdqXuSG2h85UDJKKkN7Y42NfvilMSi9sOm4HOCC5cLnHO+wCcen
         IqN5WG2Ihz2sUmcrQBQtBjCdeFV2BEE/tBLOnCZGWd39Sgi0/Pc1tZ2eGBAuG+b4uI9v
         HEwFu25tv0Yvr9B3pseY/YvJm4KKzj/QGTbs2nDXwEv/Kyups7TnfqA4kIaXcfsfH1/Y
         xzDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=84LpSOzZHGd12scXkXCh1sIuDsnrUuq6WIs7laMFf6A=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=mTrvvS97UaKhJctpPBdlYm5U83wNHh82i/2Sr0G+yPjefKqWxzmfhpntrNXJBWEo8o
         ifiL3wLNy8mo7u9N9TXSb8BT80O+yDysgh97anFTqrOmDLuE10pNYFkEzP5nMEJfiiiB
         Lph78kwEPFCdVoq+XwRzfMx4mwn2QXRxLvgR/0oQH74JnkOGb2q6TzOxd4SkFXgE0Sz6
         puiEBlz8ZJL5HwAXPjIrCfdjc+upqACowsN1af9o6sSVHGvipcQV9TIS1f0LHkx3TJS6
         2p02hL6kjAOYaazOU3Qb9pxClF1SywSq+Yxa1iUCv+ZBk9x0QCeeoB3TPjBpvC3tXAzy
         SYfQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696618420; x=1697223220; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=84LpSOzZHGd12scXkXCh1sIuDsnrUuq6WIs7laMFf6A=;
        b=gbZgiffF612xEN0B/iUrJ7v3uJG5+NPy+leh/+N9lMMpneECq8dXFSXl+yTEbWu/hN
         nzCFa3kV5NMw1dmquiwM4rR1pdNj3bqcr2fs9+KYFjI7FVIBuExR/3Vl/htK+dGJWFwa
         C5Z2rfDeaqVTH1kYdyEHXUlgAbFT/dhpJ8RZw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696618420; x=1697223220;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=84LpSOzZHGd12scXkXCh1sIuDsnrUuq6WIs7laMFf6A=;
        b=PcXiRx1DFHT6AEl/rdAwbZ2yaEPH89p0yHBU3xo4M7/Dps7xB3FAgysnHIKzx+HoMV
         02vmd7PbAQ1mUnM04rASRsAMjCkgQL55TQ5IxJfCCUHNQlvQtfBk8j43HDn5mRVBtGXA
         Wba0aV0fY8lg57bUBZPGSZWKUQ/lrB1S1nuV/uU6FBW1V4mSujfNWFdsSfjaj3NDPftB
         PHEYNgVaHmTXEloEZjsNosVlVi3eDoL8HJO2EpePc80TIgQ8TAQHnJBzJKi5JaWJhnRw
         MeR465DQgNXjDqppepc3KGKbzOK09gZmIuxEWwqYQYPrEOwTYa6xnEbXkQBd5EmW83wZ
         lOCg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yzp+6yVO4soR6lxJkS6Eb1oe79xr0//s4zLmekd/IBI4bB2ExW6
	mgiY8anQn2YUA4wc+nOCmDwLGA==
X-Google-Smtp-Source: AGHT+IHhR8O5vyTeje9Ah9VOTtplpdzUZtfHa7A7D/NvfuY6LJpGfBoB5aEQNzZktkfUKEZilr+wFg==
X-Received: by 2002:a05:6820:390:b0:57c:6e35:251e with SMTP id r16-20020a056820039000b0057c6e35251emr8826618ooj.1.1696618420215;
        Fri, 06 Oct 2023 11:53:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:4f4a:0:b0:57b:6ab1:a1f8 with SMTP id c71-20020a4a4f4a000000b0057b6ab1a1f8ls881973oob.2.-pod-prod-08-us;
 Fri, 06 Oct 2023 11:53:39 -0700 (PDT)
X-Received: by 2002:a4a:3c58:0:b0:57b:8524:52c with SMTP id p24-20020a4a3c58000000b0057b8524052cmr9293318oof.3.1696618419373;
        Fri, 06 Oct 2023 11:53:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696618419; cv=none;
        d=google.com; s=arc-20160816;
        b=glErCNuYEzqvUUvoclquiWmkDxr1/XHy0UFxxZtTrimqPLS5ymTFSM2B66wUw9zygU
         xdDjJTYAPPu6UcpbEHp/o4y/bXfvia7NcxoRY0OeDIteeUsiIBBkarud+5VBTqksSR0H
         zGyOC+FjcE/uAhaLxIOvZRAvmXz/URbX5Isb8vHl6FLciosCZa1iQXvwUzpR56Hs8T0n
         cwwZMu6ozRSz47gW9NVdL9qtQg13CTCGSwe2Twg0YZa5s0d58AeqTtFf1G2amuS7JXtN
         0qIs4Z2adQcmBMb3nGRTXIhjQG/VYRjLMVlrY7VRl19+N8yUP1kIAfKIFM1ew43apwC9
         irgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=j3zEfeqHWY2dlcOuDnDbtCcx+T3ouKyOi9La5YR/s3o=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=0c7NSQM0kb+gXurzmU7YYsKteTp/SIpahJoiMe1Ai+dt1u4DE4jKTKqOy8rw+yjHud
         xaj906XwAXMAcdP9c/5rkyGpC7y1HEYLglCrKUVRN+XC4pdHbOyPmNblBFB+9L4+/JXG
         tEbOekGxr17F1HcI1cGPnZl0RiiOTEwiJo9y95csWG9yspio/oWRLaZc4/OOorhY1v4t
         wJeJgD8imZFx5kvvov83jyS7M8JR6VMnBur+chhYckXuhC0GWX5HCBTieQYzlgnyOQKo
         62s1uOcGikAKvgT18Ai7ay4d7vbLsPL+pdKDKaHQSDRmp1+RmjrQ9KHcyl2+8o+KBnea
         XcIg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id g24-20020a4a9258000000b0057b44f4ba79si816697ooh.32.2023.10.06.11.53.39
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 06 Oct 2023 11:53:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 54323 invoked by uid 1000); 6 Oct 2023 14:53:38 -0400
Date: Fri, 6 Oct 2023 14:53:38 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
  jonathan.derrick@linux.dev
Subject: [usb-storage] Re: [RFC PATCH 5/6] usb-storage,uas,scsi: allow to pass
 through security commands (OPAL)
Message-ID: <2a6a819a-899d-4431-95ef-cbf3c75a49e7@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-6-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231006125445.122380-6-gmazyland@gmail.com>
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

On Fri, Oct 06, 2023 at 02:54:44PM +0200, Milan Broz wrote:
> This patch enables pass-through OPAL command for USB-attached storage
> (which does not support UAS or SCSI security commands).
> All common USB/SATA or USB/NVMe adapters I tested need this patch.
> 
> USB mass storage devices that do not support SECURITY IN/OUT SCSI
> commands can support ATA12 pass-thru command.
> 
> Internal kernel implementation for OPAL interface currently supports
> only SCSI SECURITY IN/OUT wrapper.
> USB mass storage also turns off SCSI command enumeration, so SECURITY
> IN/OUT in the SCSI layer will be disabled.
> 
> Note: sedutils and some other OPAL tools already use ATA-12 pass-thru.
> 
> This patch
>  - enables SCSI security flag for USB mass storage and UAS device by default.
> 
>  - adds an optional wrapper to the SCSI layer for the ATA-12 pass-thru
>    command as an alternative if SECURITY IN/OUT is unavailable.
> 
> In short, the patch runs these steps:
>   1) USB drives (mass-storage, UAS) enables security driver flag by default
>      if not disabled by quirk
>   2) SCSI device enumerates SECURITY IN/OUT support. If detected,
>      SECURITY ON/OUT wrapper is used (as in the current code).
>      If not, new ATA12 pass-thru wrapper is used instead.
>   3) SED OPAL code tries OPAL discovery command for device. If it receives
>      correct reply, OPAL is enabled for the device.
> 
> With the changes above, the TCG OPAL support works with USB adapters
> that support the ATA-12 command. As kernel OPAL code runs discover
> commands on initialization, on devices that do not support pass-through,
> OPAL remains disabled.

You don't explicitly mention what will happen with devices that don't 
support ATA-passthrough.  Presumably the ATA12 commands will simply be 
rejected and OPAL will not be enabled.

> The patch also adds a quirk flag to disable security commands for particular
> devices if firmware is buggy.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---

I think it might be better to split this into two patches: One adding 
the security driver flag in the USB drivers and one for the SCSI changes 
-- those can be added separately through the SCSI tree after the USB 
changes have been merged.

I'm not going to try to review the SCSI changes.

> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index f3a53c3eeb45..04211ac803e4 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -478,7 +478,7 @@ void usb_stor_adjust_quirks(struct usb_device *udev, u64 *fflags)
>  			US_FL_INITIAL_READ10 | US_FL_WRITE_CACHE |
>  			US_FL_NO_ATA_1X | US_FL_NO_REPORT_OPCODES |
>  			US_FL_MAX_SECTORS_240 | US_FL_NO_REPORT_LUNS |
> -			US_FL_ALWAYS_SYNC);
> +			US_FL_ALWAYS_SYNC | US_FL_IGNORE_OPAL);
>  
>  	p = quirks;
>  	while (*p) {
> @@ -567,6 +567,9 @@ void usb_stor_adjust_quirks(struct usb_device *udev, u64 *fflags)
>  		case 'y':
>  			f |= US_FL_ALWAYS_SYNC;
>  			break;
> +		case 'z':
> +			f |= US_FL_IGNORE_OPAL;
> +			break;
>  		/* Ignore unrecognized flag characters */
>  		}
>  	}

You need to add a corresponding entry to the usb-storage.quirks entry in 
Documentation/admin-guide/kernel-parameters.txt.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2a6a819a-899d-4431-95ef-cbf3c75a49e7%40rowland.harvard.edu.
