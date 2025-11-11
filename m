Return-Path: <usb-storage+bncBD64ZMV5YYBRBTOLZLEAMGQEDV2BJHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EA7C4B420
	for <lists+usb-storage@lfdr.de>; Tue, 11 Nov 2025 03:56:15 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4edb6a94873sf37004941cf.0
        for <lists+usb-storage@lfdr.de>; Mon, 10 Nov 2025 18:56:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762829774; cv=pass;
        d=google.com; s=arc-20240605;
        b=LUwT242GLJuPOsauPom5gJ4JFnZ9Ac5BzijcNZ3EpLZ/gw62YxYC8/S7j/8iq6Hmem
         Ty1jZ8UZdJFkWjV8kGcHIoyfgUc04u7bDiMvRMzIon2D6B1QW6JJKZ2HJeI8HO4oypf5
         3yDyMyAgwf56g28/BlAOvBouS6YZbGTbDCKL5q4iIlYXdwrdB6trikAsrNUFo8R7wned
         z3LhUgqeXe/pE369uY0eDt4oA2NsTXbIxxpzMwY1/ySzyEdDyVjC42+HUDzTLDrY/uk7
         xOvoVtMYAhUHb6lMkf2v42aXQfWVsbIXbcHzFMy/yxWvV57ePGypQ384mqHu3QvsXGbW
         O/IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=N8QL46YF6J1qXfa8qXPnjojg7Ovm99oFtViHLnie2/Q=;
        fh=0xme/MrIaix3xpEUyp7z9M5HorfHICUNUrUwWdZ1YT8=;
        b=ff2KLisckBBSerC7m5lQMOHYBNu89CTt2KUDDbeUQteMiyIds2G+oPOX3k+86NW+Ca
         JHqHOLDeG1H27CKLUZvM8K5sXQZ7jk9A2gFemxr/ZFD2MC3M+VH72hcE32NJke6IblgG
         ixJlwf6k3ijWjxD986sWV0UkooWtpG0IvTiQfsZo1EaeyMwQXEImnin0acllj+2ohkni
         ITT+qwxEvzH0GNjGwY+kHW1jOcotjhWo9w8o1WqvxC25qEU+yQo7UydRGHRcGVQyR7h5
         DHI2gsl5mLJTKax2UAPIpNzctz0xgifx4QYl9K3tgYserimz9eH0q8slT2+kP99vQ2OZ
         NNCg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=WJQJ5gYf;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762829774; x=1763434574; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N8QL46YF6J1qXfa8qXPnjojg7Ovm99oFtViHLnie2/Q=;
        b=H7P2gKxwc6n7TMyGH+urNMKkjtoFWxs5DKjG+6LM+VrjWZke5y170tVrgzWDANdV7h
         HfO5+Te/je0OTWmNTHa+BdcpSmmLBwHUy7oJryIporpFEYxAolVP1jSYg44VLnatGahy
         ww4LccwH10FOeEmdkgSzkAjCwpuQLDw15s0Y0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762829774; x=1763434574;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N8QL46YF6J1qXfa8qXPnjojg7Ovm99oFtViHLnie2/Q=;
        b=bzwakv+7f1/uxfDji72csQnz0uz2BDlzm8+vs5Gphej3gU3flmg6/tXebH6BlYdWjc
         OaT2CJONbSef2AGSGp95HHrH7iKSX4ajuEnVMzLDgS5egJRgI+7tILKnM9jwzIr7c4mN
         cmf6QURwX/c2zKrfdGhXJD/82lsrwMyysZxAl1ms8xgqi5C4jY3LKrl0psyvq1y/XkST
         EZmAK8OX0NTm7EjSKmpVj1INCrEoL+alN5o+z3m6tKDFYaa8GckCCyZjNCXubcf0mg5Y
         /pq4n+azB/SU4tzGj8L+K2+003IXiwTmZDjJvoQJSfIJ413XADvTuLR0Fg6G7CLNCg4+
         bUMA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVPWcbuwT+ipund2+ze+XIedyxrF561fknio6vNh3+9Y1b+OXOXq6HfOFUA8v6rpuhlDcrhsQ==@lfdr.de
X-Gm-Message-State: AOJu0YzHhkwFlChDQllU5fFEfgucJJZXU0GlIJi8AQOpUsQmZhr1DncM
	hzmCm7uAFKPs8BtV5wrpdCVRiL5lrARvSSVOnwlRryemhCfChNaQjgr/1rC4fkImgvs=
X-Google-Smtp-Source: AGHT+IHeM/sji1HXm2fz0SLIpQv5DKvbs2mAZalRr8oIwowg5noKeXot9VaaQwoRUFUlOxX3eq0KkQ==
X-Received: by 2002:ac8:5742:0:b0:4ed:20c1:9a5d with SMTP id d75a77b69052e-4eda4ebde0emr108489951cf.28.1762829773883;
        Mon, 10 Nov 2025 18:56:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+a6F0a7wdKpvZ6ynKRjPzev6zBuOw72bxCrexUzzk2jEQ=="
Received: by 2002:a05:622a:2e8d:b0:4ed:ab07:b475 with SMTP id
 d75a77b69052e-4edab07b923ls24833261cf.0.-pod-prod-09-us; Mon, 10 Nov 2025
 18:56:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWyry3pIcK56X/XSq578nbFCBLZY4ByVVP6wyaZXhX2mW0p8uotaNhe0m8VW9KyKnm8zqKjiUoxez3kzQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1995:b0:86e:ff4e:d55e with SMTP id af79cd13be357-8b257f00ce3mr1446904585a.39.1762829772709;
        Mon, 10 Nov 2025 18:56:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762829772; cv=none;
        d=google.com; s=arc-20240605;
        b=KzpaKoluT1ROFU9ydGToBJhJ72goSKUIydAo3JB4thtpbTkZg7erWoaP6UCnGD3PBL
         os95fAdpa9b09EBl+3vc0BCyc8A/6NAUnzKCjLY+t9SOaTTUef/WM7U9fn0qknpBA/3m
         NINr8gTYgtN69R0ZWZ/4iU0e+7ZJv3Y+NpQ/DIF/QW6vDpGxv8qyaBalcpimRfVHHAS0
         1ZoVjRcFzNWkn/ntCi8WBFq2ugtZxQ3THqk2R/97rPy2B9NY0J2Sd2iWmxLzDLBw/FIm
         GtQPbaTD9C4++Hj/NhRTc2CzN0CCL1LJmj5fRYfvd8AFDzp2PbV3rPjHrJRD3WPxSwHb
         2yvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=B0Mv6RGbUEpA365vvsW0RrdXBUD+tvy3Sz5bzo1J/PQ=;
        fh=EiyUMsHDxJ9HEa6OsmPkqLigCACoosqOzPwmk3Wfx+I=;
        b=UUmPwomQar/9j6n2lYp6/0ln0BXNKDwQLKFHQaCaFe7/YKpL7ZVr+2GFqJxGU9YCY5
         rO1oKru4dHMD5LcbmdLv9yasoq88UssKOKvKg+5F/D1pD7fO1C0CDbtODSysr7RlL/zD
         8SkLudsT9q6Y6R/wUi+7isp8wLt4KV2lsBx6ps+ARC5mFAsdMc5VVQtc2Y1VRvENVvBz
         vyVrTOyQ1KiuolLJkeH2qYfSMy7BpJHbEMSwkFLdFU+iCkZXz2xcLw1kwjyuoXBL6r0x
         OX7c4Bf7q6AZ1Qf/5MMhAcf1c8v2jvu2ttMxkwVjazPw8PK3eRCJNo60blk6LYjruPll
         XdPQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=WJQJ5gYf;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-8b262d9706csor327214685a.3.2025.11.10.18.56.12
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 10 Nov 2025 18:56:12 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVkWXi5dv8GPD+H4YxJJphBiQoi924Ddn5JhLVQCQCXRO3c4gB4qQbrj2/5uM9frXUXhO0lSFsQXT5hUg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuI0AKUMBMfjJyEz32RSMnnYHulEXsYyKWIj1us+coo1ShrLM6Whkc5q+0kCpQ
	2sV2vRdLWYqGz8NWMqv9fqeWMPuksddu7HNvIVzArLZUgTTec6n8eziQeu4RPOz85KtCoUgWUES
	2lbM5Qy8ZYwwH3DwljqvjXJEZUkAxp8yVNh5AaJnqnmk2cBeTUDaUTByPjj8qjO/PW7MexyRpQn
	64OQDiqvjPHwq5//kCBWUwp8gIxnZwpxTq8rrQR1TVRcY3bUAVT1agwupDjg64e55HWdhxivbaA
	SDJemAOYh1OvTJAOtxXWs+PAct4666NvTGNSj2GuVh4rYjR9YvTrKddiEB1iM+zCc3elPEaVQmB
	ahXwc7G3Uq/PfnNxc9JcLbRD3wsk5v35aI/0GEhZoIJlYapCJg02Ww/s87mY0rnfMNBq3I6GTk+
	5+B6kWXlJb97GY6A7v/tkHV4U=
X-Received: by 2002:a05:620a:4416:b0:8b1:f2cd:76ba with SMTP id af79cd13be357-8b257eddfbfmr1354362085a.1.1762829772221;
        Mon, 10 Nov 2025 18:56:12 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::ba76])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b235826d4fsm1125896085a.50.2025.11.10.18.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 18:56:11 -0800 (PST)
Date: Mon, 10 Nov 2025 21:56:08 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: ccc194101@163.com
Cc: benjamin.tissoires@redhat.com, gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: Re: [usb-storage] [PATCH v2] usb: usb-storage: No additional quirks
 need to be added to the ECD819-SU3 optical drive.
Message-ID: <7cfc5d3f-6e08-4557-855f-605c079d27ca@rowland.harvard.edu>
References: <20251111012737.13662-1-ccc194101@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251111012737.13662-1-ccc194101@163.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=WJQJ5gYf;
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

On Tue, Nov 11, 2025 at 09:27:37AM +0800, ccc194101@163.com wrote:
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

Your patch description should mention the fact that the bcdDevice range 
for the existing unusual_uas.h entry is too broad, and so the patch 
restricts it to cover just the value of the ECD819-SU3 that was reported 
originally.  Otherwise readers won't understand where the 0x0209 values 
came from.

Alan Stern

>  drivers/usb/storage/unusual_uas.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1477e31d7763..352e9d7324a4 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
>  		US_FL_NO_ATA_1X),
>  
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
> -UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
> +UNUSUAL_DEV(0x13fd, 0x3940, 0x0209, 0x0209,
>  		"Initio Corporation",
>  		"INIC-3069",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> 
> base-commit: e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c
> -- 
> 2.25.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
> To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251111012737.13662-1-ccc194101%40163.com.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7cfc5d3f-6e08-4557-855f-605c079d27ca%40rowland.harvard.edu.
