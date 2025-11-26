Return-Path: <usb-storage+bncBCUJ7YGL3QFBBT6XTPEQMGQEYQG3ODI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE8DC89A13
	for <lists+usb-storage@lfdr.de>; Wed, 26 Nov 2025 13:00:18 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4ee3296e984sf132147661cf.0
        for <lists+usb-storage@lfdr.de>; Wed, 26 Nov 2025 04:00:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764158417; cv=pass;
        d=google.com; s=arc-20240605;
        b=Goq4xQvVOqTqXuh1yS4sgWliccJN5sY/ZMwsZCUV/NtMJ8rQLTHYtAQhr4YCuGODQ4
         plWPZc0Ggrdh6xwOc6L5TcNDBAVbVKnAA0J6MuiVB+SDQH/0b8TUFRDdEpaj/XcyiMUx
         NL2BjpoXJ0XcSuxrJji9bo+sbwyfDr9cM4RpL7hFKxYcDLK4lg0tOdxUhBFPtJIjA7nk
         /lEyKiNZuCK+0Hx1wBoFmwQtJhyI9Lluk/6l4kLfMvvAJ7Gzl689jGP1gHQKH5qKFVbc
         PvYEvrklFTVLctCWd79sJAw13hS7WRqFaSeYAVkYlgSYO3MCd9F6xBbcti82iRMt59DD
         aPIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pNTrXU1QRryjwEOx3PCuJT1liFH4sTrBmBh1cn1pytY=;
        fh=R+Tp2/RN7EtD+RTafCC3bt03TkZD2gCp6/IWnzHQVNg=;
        b=AbQwe9hltdC6iK8HPxj+DBK0DIJET285tB1oJaN5/cH/YufDznvIzNcjh7x/qt7ILR
         /yviLvOYM61dGBi9HJCep3lqiWPHiU5hW7payNz3rw7Ny8tor6pM4+0T7FgaJ04mANxy
         +5VHFOuOb+58kLfm9aBiyWYql9Y2gywTjf/uS+YOUt/CP7f8cXo3MdR5ab1rbQ8NBV/j
         KepMoO0KQUmMnHF8SGH5CWWe6BWfUye8uCOiiPSAb95k/FbwZb3Wg5shzyRKEpTTmKbF
         p1YU7Kr/ojOqOm5f9WITJo6lNVAqXk5ZZzRFLTQAHUEsmBx9dT3af1T/bLHGVFeIPLs+
         JO3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YnYgleI8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764158417; x=1764763217; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pNTrXU1QRryjwEOx3PCuJT1liFH4sTrBmBh1cn1pytY=;
        b=iluLUNioctt8TL0Z6AzBOs0J7SmsldIuZ2kuQTPYoZaa1adi7G+QvELVZr6qoKZdXU
         ghmYtcAyaD+cc3D+OURQCxjQK++J+VtVA2JvDUYihEYWK8UCqPKMkAJt4GuBcTA2kCvl
         aRJef3AVRHdCJ8DrzYFcXh/GXYBYl8tLQNyb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764158417; x=1764763217;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pNTrXU1QRryjwEOx3PCuJT1liFH4sTrBmBh1cn1pytY=;
        b=PCnmUxJOJ6XdXcUSUuBDmxQBa7fzZxKKleDE6jV/7i7fIqKvGUoouH0sLJBkgHtDDn
         xyPMX6TMiP7j7eD7w6YCyKXFpK8fAVIkWTqSjlcxx73dpIhYX7wFiw7GssK1qk5sKuA6
         h2ioGMVuLvdQ413GfENVQmjC0t4s41erNLoAbKcmN+Eq8H31K0S2AACAlTGgT/CD/4vg
         qSfTpYPcw9Naz1JLBtcfE33WYAFdw9epbxztxOqvx1Q1/joZskST5bU9lgCeEw40BOQX
         qpsY70XpEv+KCFRDJQB6HKzKpjfGfwkDYa0orgoZ7KfnIxPK+2rQC6wS8Qpf/JPtMLeO
         EwpA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVDDdAXf2nW7vRhYnBsJyq4AV+i1l4AQHkSZsD2ka90KLBxzOA1lFvAaKzkcRj2Q74xM6HIzQ==@lfdr.de
X-Gm-Message-State: AOJu0Yzj4vOXbo9l8+DwRqil3umP+scW13FuNajI4fn4rJmCEcb1QsaY
	3LObVoKxVFTNsH0wgSdmcbTkVYuYOS90PZ9YVfJsVd3NdTnL7mVgtLrJd6gZOi6y6qM=
X-Google-Smtp-Source: AGHT+IGHi4rU59k2v4qL5k1d2gNQ02a6Er+/X9+ABCyT3jDO548eI+3/s/AvnkzgZWpKY38msXFW2g==
X-Received: by 2002:a05:622a:1aa3:b0:4eb:a0aa:28e with SMTP id d75a77b69052e-4ee58936cb6mr251879161cf.64.1764158415966;
        Wed, 26 Nov 2025 04:00:15 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+bVeXeiJhfk18c63H2/dR6ecKo4cT/X2YUQ0nlLEPGCOA=="
Received: by 2002:a0c:f110:0:b0:880:57b3:cd12 with SMTP id 6a1803df08f44-8846da5b16cls90316756d6.1.-pod-prod-03-us;
 Wed, 26 Nov 2025 04:00:15 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWJyUQsdA2RqtIOIfiBMoT7Bo2x1Jopqwy47iZukwpVbEmrbmZIhzMN7quwtbUQbQfF81yzN31e0UVzGA==@lists.one-eyed-alien.net
X-Received: by 2002:ad4:5ecb:0:b0:87c:2687:979a with SMTP id 6a1803df08f44-8847c4d5662mr287352886d6.29.1764158415129;
        Wed, 26 Nov 2025 04:00:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764158415; cv=none;
        d=google.com; s=arc-20240605;
        b=Jt1VN1v0WGH5t312jz+Nc38kOLk3LSI/fvyei6MlJ7UF2ZJLyBvXtcOJxOzj8VHE8m
         /gQbm5se4Cv8Bi3DK0QplFXk0PX4EBwPQtdJlHaozNJKb3Cu4FcJIPo79+/rxqogh0+q
         HnbZ1upDHBj1M4Rx+2sH+WZUpNc+rfC9KER6llqBSNfAgDQxZHmyfYDlEhu0Ry6snQNk
         C9hrZ8U2zjWMddG0efcxuvXH01r2r+X91GqorV/DwyWQDB6+1HyW9AuXioqYcdCdu+ik
         vZ++3L+zWSHXuFTQRNXfyjRZ6QdJzDeEiuWlGe8SBw5WW/x0XhS0jSVENnoS09x5afKG
         7G8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=phR40V/OHBc0nuPNqSIMFTsguU15xw0aWOt1uSR577k=;
        fh=fjQCn8Ztyl9/BOrOu2o6/L1jlomO2udBUKMiP3igqSY=;
        b=PCygblrgUrnMUyu2GBgt1/upq4zAKi3PrlVkbg5dq/H6h+y5aafZ+6nrjqJ4UWIzdV
         qNAPLwtDRQaDConQ89yrYtZH2D+svBkik7qNtN2DJroXT889wh80U7DsV2cMe9tDpky/
         dFIVd8cPOELeZmGzPWdpl1Hf1appga49vmT+hx9ZJ2w1dcnA37cQdGmI3kqC3A1icsUA
         27QtitqecAumSj8ugiOLJuL3F+j8RS/F8b52jZy1sphtijYe/SzuDKfs4Nu0cUxIwxzn
         1c/1HVMuwGd+8SSuK42eR2jk4SBw5bWoRoPHySJdQDWWQU4vKvf0EY/Dc5ZcWQglrWb8
         cgtw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YnYgleI8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [2600:3c04:e001:324:0:1991:8:25])
        by mx.google.com with ESMTPS id 6a1803df08f44-8846e672456si63123756d6.1442.2025.11.26.04.00.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 04:00:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c04:e001:324:0:1991:8:25 as permitted sender) client-ip=2600:3c04:e001:324:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 85FB16019F;
	Wed, 26 Nov 2025 12:00:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D848DC113D0;
	Wed, 26 Nov 2025 12:00:13 +0000 (UTC)
Date: Wed, 26 Nov 2025 13:00:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Chen Changcheng <chenchangcheng@kylinos.cn>
Cc: stern@rowland.harvard.edu, benjamin.tissoires@redhat.com,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v4] usb: usb-storage: No additional quirks
 need to be added to the EL-R12 optical drive.
Message-ID: <2025112655-reunite-reptilian-9a35@gregkh>
References: <20251125053201.31955-1-chenchangcheng@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251125053201.31955-1-chenchangcheng@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=YnYgleI8;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2600:3c04:e001:324:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Tue, Nov 25, 2025 at 01:32:01PM +0800, Chen Changcheng wrote:
> The optical drive of EL-R12 has the same vid and pid as INIC-3069,
> as follows:
> T:  Bus=02 Lev=02 Prnt=02 Port=01 Cnt=01 Dev#=  3 Spd=5000 MxCh= 0
> D:  Ver= 3.00 Cls=00(>ifc ) Sub=00 Prot=00 MxPS= 9 #Cfgs=  1
> P:  Vendor=13fd ProdID=3940 Rev= 3.10
> S:  Manufacturer=HL-DT-ST
> S:  Product= DVD+-RW GT80N
> S:  SerialNumber=423349524E4E38303338323439202020
> C:* #Ifs= 1 Cfg#= 1 Atr=80 MxPwr=144mA
> I:* If#= 0 Alt= 0 #EPs= 2 Cls=08(stor.) Sub=02 Prot=50 Driver=usb-storage
> E:  Ad=83(I) Atr=02(Bulk) MxPS=1024 Ivl=0ms
> E:  Ad=0a(O) Atr=02(Bulk) MxPS=1024 Ivl=0ms
> 
> This will result in the optical drive device also adding
> the quirks of US_FL_NO_ATA_1X. When performing an erase operation,
> it will fail, and the reason for the failure is as follows:
> [  388.967742] sr 5:0:0:0: [sr0] tag#0 Send: scmd 0x00000000d20c33a7
> [  388.967742] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
> [  388.967773] sr 5:0:0:0: [sr0] tag#0 Done: SUCCESS Result: hostbyte=DID_TARGET_FAILURE driverbyte=DRIVER_OK cmd_age=0s
> [  388.967773] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Blank a1 11 00 00 00 00 00 00 00 00 00 00
> [  388.967803] sr 5:0:0:0: [sr0] tag#0 Sense Key : Illegal Request [current]
> [  388.967803] sr 5:0:0:0: [sr0] tag#0 Add. Sense: Invalid field in cdb
> [  388.967803] sr 5:0:0:0: [sr0] tag#0 scsi host busy 1 failed 0
> [  388.967803] sr 5:0:0:0: Notifying upper driver of completion (result 8100002)
> [  388.967834] sr 5:0:0:0: [sr0] tag#0 0 sectors total, 0 bytes done.
> 
> For the EL-R12 standard optical drive, all operational commands
> and usage scenarios were tested without adding the IGNORE_RESIDUE quirks,
> and no issues were encountered. It can be reasonably concluded
> that removing the IGNORE_RESIDUE quirks has no impact.
> 
> Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
> ---
>  drivers/usb/storage/unusual_uas.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)


Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025112655-reunite-reptilian-9a35%40gregkh.
