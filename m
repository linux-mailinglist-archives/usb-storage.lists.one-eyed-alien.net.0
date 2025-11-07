Return-Path: <usb-storage+bncBD64ZMV5YYBRB7VJXDEAMGQEUOZKI3Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DA5C40AA4
	for <lists+usb-storage@lfdr.de>; Fri, 07 Nov 2025 16:49:40 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-4eba120950fsf24542811cf.2
        for <lists+usb-storage@lfdr.de>; Fri, 07 Nov 2025 07:49:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762530559; cv=pass;
        d=google.com; s=arc-20240605;
        b=i+1ru2grUKOHq2WE9oxs5d0Mr/CW1vV/h851BOyvQw/yKXu7XFVVxEOzvG6V28abOy
         wmfRxmMBUwTTheuN/hG76MrJ3WcUUlDdsLwxYY5VFY0zN7lukZPiEbPeeDvvrV2WOIQl
         ljtMdFGq397kol3uPKUjsDMtMbbqxFrsBATnrYE6uhp+1zSkEpp6zX4mUK75T6yvF/Bu
         /nWDngn6W2Mp3zb+D3fTKbOpd2p1cwUNdT38lwPfA8qqx91Xe1wZc94M/4CG+ZG+75yG
         m/MJzgW79QdNFv3RhJrnZYXddQIBKneSWKDYS7eUY7//a3DAotBynIknbqWdFlotrLMS
         QsXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2vk3olsbQ7N0eConHgr9lO2VHnw/DNZ8pm+870um+sI=;
        fh=ojTs0Aw037V9tnwqZoFLTnXDoe3UR1kGSa7HL3yG8f4=;
        b=BL1QZZwDq2KzwKcCrBFdTvNcSh2njq5z974VkyBXhOHD9BXz8U5MtmCmXUhqezLdLE
         caUhJJLTZwZBn1nzltJtcKWdF/aXSyUGterX2uxK4ZVC5mSFdDRcIgUvWYMChDbgoha1
         Ky9gx30JwpbP4ySZPd9xxv+uIjsZ72nOXGLuY4LUvoXAlXlQ4/ARV9h+IfWpWxKd39w2
         4kILYRsjMLcTJNlgRmaoxP+bWWX9TbZEAvfPm7+/PNtwYXaKhcC+kyH1qheqQYGxZXoG
         kBDuXQUAvGQ4LJEXnlW1HirHvBlB0esiWrzGDvDdV12YMCViz5i2xQgAbFvRHHYZqb1B
         f3TA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=bfgHsnPa;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762530559; x=1763135359; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2vk3olsbQ7N0eConHgr9lO2VHnw/DNZ8pm+870um+sI=;
        b=O9oOCUyTnbctbngR+ot3/cKngVxTGS3Kosq/8n+aTpd2Vu4V8AKuTvv8Qx0I0wCmdX
         KPpPSNlVCB3rxNcuPlQ9qOcFEzBIHs28b28s3Xt8JY9j+sfDCLB6+7rt/nVJNTwVXiEA
         Fj/rTWfaR0rxYbng2RLjYzZldsyIHeRWZdWb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762530559; x=1763135359;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2vk3olsbQ7N0eConHgr9lO2VHnw/DNZ8pm+870um+sI=;
        b=tZuKGTcPiJPdAtyJHQNGISff8twauNMIoy8SnRM7jFTOO62rbwLvOQHRrp88tQscJ8
         mYR/2tOtB7EUwIslkWgB0Md5G+nmLr4KQM8C3QCGtJnPgJrAdFAxgH0KjKA2JBw2ZViE
         8h1JrXjYQqE/Iv4ceNJBmQ+aElqs3FEH67g4GvyFQR87JmVe9JDjzGutzpGYgIoMX/89
         we1iHtR+DJGJqL92vzVJ7s/ht0m19qHPx/VsgFC9L1sDD+LhZ9SVDJ8LQjuRtz8+d6hW
         qVQWQhSpwS4At9y2vPaCYPhJO6NafIWtp7kWQ34ma+DCY8uAelGYh9bNTd6I2zHKxPvA
         68zQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUDjRp0dsSgGBnFVKG7HmRQ6rCmtVKRgcoKJwrODeNa5ycA8ozheCS92w1uZBrnKLgNQILU/g==@lfdr.de
X-Gm-Message-State: AOJu0Yx816nuD7m7E4R7FRaegna/ko5yB1fb3QXng8DeqLT5P+W2iHUd
	3dyEGk1Bc+Na+HiADW8wsW+y9zfEGluWx3nbOSMUD2pN0FfmnR57+7hGzBVGDQrBgB4=
X-Google-Smtp-Source: AGHT+IEDAobiak3g4STukeFlhQTMJ7JAK44J8w7WEsLX8TZEYULe+xBSYMZ9FYbLClUmf14v6SLn5w==
X-Received: by 2002:ac8:7fd5:0:b0:4ec:f07c:3e73 with SMTP id d75a77b69052e-4ed94a7e8f9mr42950631cf.76.1762530559197;
        Fri, 07 Nov 2025 07:49:19 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+YUh5oYyQO3UQbq2wa6T/V4qTFXrYLMxlNW/sHsCx+IwQ=="
Received: by 2002:ac8:7f08:0:b0:4ec:ff90:36a1 with SMTP id d75a77b69052e-4ed8092b6b1ls9496401cf.1.-pod-prod-09-us;
 Fri, 07 Nov 2025 07:49:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXLCEoBe/OtFUk8Zy+4Y9P6EqGcKwEJkD88+IO1DYLWZSMSwV3AnkwVKkyM9aSNowfaffMt3cJUqmNr3w==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:110b:b0:4ec:ef09:6b74 with SMTP id d75a77b69052e-4ed94a5875bmr44619161cf.60.1762530557825;
        Fri, 07 Nov 2025 07:49:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762530557; cv=none;
        d=google.com; s=arc-20240605;
        b=FdX+TaMfRhpB/Nl2YbpQq0+0dH2e9MAYNqk8znH7SJCUeUAGxyDSKSXCMFQ12bB0NV
         eS9ADzhoZqbbATlEYCx+YSgqzm2NYx/ghNRzhhjSkyG1aMsV9rihl84zM4VmTTgM6svH
         5G53my3vLft/3IPtWEQjrqFhUUeKHkjO7uEosxpCn2BFvTlUPH2p72usEiWXaU6Q4Kqr
         gpCYcl7ioHFOJcf7o/IdkucgXhMrv1OcasemomE0cjWpBA1o1RPm+/qYEb0iQ/z2hc80
         KiRE3GxZK+7iZ3BUkOBgXVMXtfXtrvBQ7stow5uXqCl1owzg8e3Xn3jytHzsTSJDNk72
         i8aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0v6eg6ng71W2ihQc/lk64rXLMci9QzB5Z5WSHkaUZyQ=;
        fh=8Z5obEuRraURzavMa3jL4mx9az4w3MRpASssdJKO88Y=;
        b=HiA6PTbaBy10YV3mbTpnEVMeyy38fDX191qNzRfj6+LNGTSQGSWz/IiX7D1dLDpfxY
         qMbMmluS18VmsBa2B6nJbMKiewHpdRh68Suuf0tdyI0Ej3S/aZDXbwO0GHEnawMlihDG
         ediNVmzbZTtvrgojMIOBjpLGDgFgqyXVALWc/8388dS6xszpZNSGg3oT8DuIPu0ybqGr
         q1xyZOBChNTCxXd/1g3wmhIzGHiQh7Z4XjMRHIuFZoQcOFHBbYVQzKBOGWm7gXwWF6gI
         DIoJYmqb3HBZ6f3X7KoBlc/8Qew13byoLohKtCJNJkBFRYYiwk5Vi+rjYjcGWyusYoyW
         e52g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=bfgHsnPa;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-4ed81388a29sor44931491cf.5.2025.11.07.07.49.17
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 07 Nov 2025 07:49:17 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUzUMkCRMYqRsROHzWh1476QLZc0zJ2YcOMcIr/2T5mDq6/QexNsC0vRrOitdW/jjJUfrko2mQ0GFSI6g==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvqv2SF4S3vuug0uvvOHOQOoFmh7R6hbU6dOoczXpxfGGAh/rSGMD2E7KAUkNR
	LNZpiC64KNAsoPAT17xLp/YwoSnjLciUslCnLlFjneErQkpJ7b93x5tEmDKtO/3IvEMPNi1rKdT
	Q4KbmplFfEj2pYlYH2uGXbt77B7+un0Le4p3Z/xYq4KDLp4gHktvNSrPWmIZBFE/tk+VzqUOk5I
	haZ1dn3tIkmgTZ3uFqm4MuG11YRuhdXM8Hr6Nf6Qvc+U253e9DieksDxal3ap8p9Q3NmuCjYo69
	GJxOueJFRd8KtVicW8E5Omb6EXMYE7QOWM2iFXe+T75zuU8cNTHIbkXvF8Zj16zMmH+yF8r2TIG
	S3VjMMXVi1Xp0eC0qE5MpoJlh1mYWGdo/ADHeO8e7Q76XSHyxKE9HnhRED7rBERAsYYBKUbh0G3
	0qNyoSG45Op3mp
X-Received: by 2002:ac8:5803:0:b0:4ed:66df:8023 with SMTP id d75a77b69052e-4ed949747c4mr43829531cf.30.1762530557379;
        Fri, 07 Nov 2025 07:49:17 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::db9a])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-880829fa47bsm41535246d6.48.2025.11.07.07.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 07:49:16 -0800 (PST)
Date: Fri, 7 Nov 2025 10:49:13 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: ccc194101@163.com, Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Alan Swanson <reiver@improbability.net>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] Re: [PATCH] usb: usb-storage: No additional quirks need
 to be added to the ECD819-SU3 optical drive.
Message-ID: <c7bf59b5-8078-4b47-b56a-7b5568272d07@rowland.harvard.edu>
References: <20251107061046.32339-1-ccc194101@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251107061046.32339-1-ccc194101@163.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=bfgHsnPa;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
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

On Fri, Nov 07, 2025 at 02:10:46PM +0800, ccc194101@163.com wrote:
> From: Chen Changcheng <chenchangcheng@kylinos.cn>
> 
> The optical drive of ECD819-SU3 has the same vid and pid as INIC-3069,
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
> Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
> ---
>  drivers/usb/storage/unusual_uas.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1477e31d7763..6d32b787bff8 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -97,6 +97,12 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_ATA_1X),
>  
> +UNUSUAL_DEV(0x13fd, 0x3940, 0x0310, 0x0310,
> +		"Initio Corporation",
> +		"external DVD burner ECD819-SU3",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		NULL),
> +
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>  UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>  		"Initio Corporation",

It's unprecedented to have two quirks with the same VID and PID, where 
the second augments the first by virtue of its wider range of bcdDevice 
values.

As explained in commit 89f23d51defc ("uas: Add US_FL_IGNORE_RESIDUE for 
Initio Corporation INIC-3069"), the original Initio Corporation 
quirk in unusual_uas.h was added as a copy of the corresponding quirk in 
unusual_devs.h, which applies only to bcdDevice = 0x0209.  Should we 
simply limit the existing unusual_uas.h quirk in the same way?

Benjamin and Alan, you two appear to be the people who originally
reported the need for this uas quirk.  Do you have any objection to 
changing the bcdDevice range from 0x0000 - 0x9999 to 0x0209 - 0x0209?  
Or can you suggest a range that does not include 0x0310?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c7bf59b5-8078-4b47-b56a-7b5568272d07%40rowland.harvard.edu.
