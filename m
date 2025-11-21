Return-Path: <usb-storage+bncBD64ZMV5YYBRBXU4QPEQMGQE27YJMVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F34C7BA9C
	for <lists+usb-storage@lfdr.de>; Fri, 21 Nov 2025 21:41:03 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-4ee41b07099sf26724311cf.2
        for <lists+usb-storage@lfdr.de>; Fri, 21 Nov 2025 12:41:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763757662; cv=pass;
        d=google.com; s=arc-20240605;
        b=LVcxFWzmXkGvxUU9/3ANT6aw4R0MVp6v9fgnZb+bmwc6hzZzKkDI4Q4/M6EiFxAv5I
         od4oLfMlKhcx54DKdTs0TF++LnszKmMCV/HnNZWtNwOCekenaKoRFheGYaQO1YPzJWnY
         y2LJ7LdDSytnNfNjqQ1miiCSOzzAqjkt14FK19xvH9jgXVlzFjVWZhrMshIuiJwEYdOA
         BxzUUuIl2NAgN9Fi2S+d8034EaywUJ2XVd+jb+s3hQS20iVlVS8d4NGwFyNPWGs6IK+M
         yxKfWCD7m3F+Sv34O8dA9LojSW/TJmQyKKdMwtBw2Enia1ncheQ7xxPFEfgqcRC6AoV7
         KLuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9e0+tnceGsrNRG2CgSrcgNxpwTSV7vGEEVXu1g8TQiE=;
        fh=TAbEPOmYyczZJkd5aZ3UgUq2bp8Ke/AL1uAz/cgLxwk=;
        b=gDC7ajvBGuxzA0w0D9THYFRqzJu1fOthQKfPGfpisZmKllhmH6LdbUI+6EiTJKBzBs
         RGHtH/BVADNninM+S39+s2tNuBDlIh1J/fQgiwwfRRcJWo5XdJ9lIZ9MR3K5v0YVVC43
         TaOAPDWkkbuqFLIhBK15qHLHPKFPYU9C6/uEh2szdHwVzIoOXcEKmksb/FpEEjiTd2Lh
         P15TIvOZEyZEb/JoPFZiu/bYe32vJ22TIQYUHAFx8wgr1Ksc9LB2dA43TXxwg9Odw3Kg
         Exqu9AWkxoGExXhGBy4YVi6j1UVjehLcULL1LyvEO/YWoVk5oDNmElalQ/1OY5SEtyYO
         q3sQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=oc+ObzkQ;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763757662; x=1764362462; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9e0+tnceGsrNRG2CgSrcgNxpwTSV7vGEEVXu1g8TQiE=;
        b=Bb5GppLghvy9UKUCMgVtVxtSTt6FlD93TL0NNQEGU23MscjJkqMYpuEe976kqNJFvu
         tZx3GiIQk6r3Zu8l2YRVm23RwxepZPWFmnPHGCSAli8TEDKSAu8si1mFM4kAFU8TZsjh
         +sd1Lg1qXSAdnJzBW//U4MBv0QQspL4Za0msk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763757662; x=1764362462;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9e0+tnceGsrNRG2CgSrcgNxpwTSV7vGEEVXu1g8TQiE=;
        b=G4OWXRWn55ztakcfWmEe+vOGnv5i6mS6gOSnrbZ29m/lDWZ4lG3np2iejMn8a4Kyow
         W4MXSANWKgtlHo8cGUjZXFPtt2qWg6vExMiAGxF6LEg5F3JPZesMElstaB5nTm3qOmV6
         V1vpUUicz3xl5uxD0qK85yDvwWiUx8Tf7EohQh+sP4u0y3m+WSalM8/P3k3zVYRBIUIH
         uZIAk3DGTkFes4+MTN4imUDUtKa4AqJe64ElYnLsoV5hoGDqbsaYNkTxgWnvE69vdGNN
         PCV8uchQRw1p2FQomWiLKBoynax43zpuol1JHzRtYmE0LhX0L6gfmR00Kx0HmxYKWevA
         q/aw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX5of66Z3wEBEE/h82kLDu2g2Up/CrJiTcjT0kiNkBnhAcuxAFnWLSc51Koe3zrYc2s3Ea7Qg==@lfdr.de
X-Gm-Message-State: AOJu0YzpMvuRkpvcT4/Nk+kCc754pU2BAYhLZ1f6XQ9OtnxWoYBVLixH
	u5omH2YWL49dEj7x9unkNY5qooW1bqAB+CqyWeJSnqN2cGXx9+6UQ8+57ExX9s17orI=
X-Google-Smtp-Source: AGHT+IH3FwL3lv/EYy+518MRsHLxv3PPJfyFVHTrhq8akrNy5tYq8yC2jh+8nCeGwXt1OBNqoWdFYw==
X-Received: by 2002:ac8:5d0f:0:b0:4ee:2080:2597 with SMTP id d75a77b69052e-4ee589103cfmr49549791cf.38.1763757662277;
        Fri, 21 Nov 2025 12:41:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+ZDZWp7yzmg+ewbJavqBcwbbLZXaIXG0dmYNaYY+x95Rg=="
Received: by 2002:ac8:5d04:0:b0:4ee:1b36:aec4 with SMTP id d75a77b69052e-4ee48fab8a3ls45429481cf.0.-pod-prod-08-us;
 Fri, 21 Nov 2025 12:41:01 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWzstWJJgzcCcFV1yr1qV1d3b4399cW82p4cKh1P+I0qK49jYQ0wMpVOu2ADn16dAch20lWNclcMR7oxw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:288e:b0:89b:9b75:f5f1 with SMTP id af79cd13be357-8b33d275183mr436738385a.53.1763757661160;
        Fri, 21 Nov 2025 12:41:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763757661; cv=none;
        d=google.com; s=arc-20240605;
        b=CN5zDWXyuREQrdOHRXlPXDfIFx21668+kME8/GfWN92Klk9iPALA7aC7jewCnWZmEW
         5wnwEsYf15IEp+40knNmCh1DAMYK2XtjLsuOkA1L2XJ/WPhtjjWNyjkYDPkP1/WlAZPP
         XsRgOQnionMiWBzHDmDF8fKxkUfK/Ho7SnCV1KgXIGQh728e/xjWAkcyJ436JyqdlRLS
         wUqujjwfM4qwP9rTP8wOy6HaQRe4lhtK5UKhrGqXXYie4ZoC+PcRODho0e3NMG24WWmO
         7zGbhEXsA78KdnlRHL7wTL9qmR25DQX2ecdyScXlXo6Ro7RNnOVYJGDZB6xzRMWrM9vD
         W5Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sVwtHwtuxFV7DD+azapBNard2M9XZQlJ7UfyMdl29ew=;
        fh=qUb3jf5AnQYO1h0u5V2RBnaozUb+xtC4udSUk+aSqY8=;
        b=lPV2Q/bw8zC4/oCI8dNoXYdERNA1ey6lqWUQNiheWNskGl1vZ+6fSe2eJZnfoTTh9t
         jQFxly4JivyQWZk3WpKF+jJXsUck9cySY6G+Sxc1iKUk6BOVxDDpheuvwgJyokujfg4B
         E/mj2mbgY1MfZn7bvILppIZ6Bdzf2dreEVIhvD7rd3eY9IfVQDCQJdj60zAu6llzZwyS
         18MYJNRdmR3Xt9AHxFUc6/csAenPA+SsUDEDtqvEdEjG0Ca0wM/tXcm+EKmEz2Vd936T
         MmcHbjyqcD2yWvRcWqhU2+SE/1AbumNkdUxnyHWR9q5x0SUBlKSr1gb/pZKWYLNqdd5f
         ocfg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=oc+ObzkQ;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-8b329430192sor224215185a.6.2025.11.21.12.41.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 21 Nov 2025 12:41:01 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXp5OcpY5xyuRmTBAOhKRpyTImVMnvo70ON3qsszsEClgCxMibqK5w+KisI3TKQ3tcUGkDMbwfB3yQgjg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncu8EAR82q5a9WMVvPiHRJ5WN9S4jaW80URb5nNYF97dL4CuehnnYxtQfm2seLS
	oXwEIvDC6kSnBk1Tg1I6Q5XHPNuu3/kQGQFrHf0YfBwqwK75YvXFM7lCnYyMceK+hHSXOZkZqCO
	rGfJH+FreTAp1dManJ25pCUFogcs5AsM9lkv4ioA2BPGYzi7HT2dpJwnvdoM82kFCoiMxFYm3ab
	Su/QzXme3tA//34XrxmmOetDDpUoPufL9HlwLN+F+7HUXwVlBSl43c/qaNkodOPU70dWspSOdu4
	jf1eF80lx6g6BxdxxspE3qcG47YRk6Tsw4uwQ/WZ3KLS39vM2bu6RnE5UTKiBGkGsqSmLuj/7UY
	SONggDidPKtvzUpo5kVbjsiafH0CYKBQjHr+lFjs3LhGhmXd6ufWkRwVMkuptLPWIyRnClHJFJg
	IqX1x221riuBh4
X-Received: by 2002:ac8:7f09:0:b0:4ee:49b8:fb4b with SMTP id d75a77b69052e-4ee58935f89mr55375691cf.66.1763757660682;
        Fri, 21 Nov 2025 12:41:00 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7632])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee48d3a041sm40646461cf.1.2025.11.21.12.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 12:40:59 -0800 (PST)
Date: Fri, 21 Nov 2025 15:40:57 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Chen Changcheng <chenchangcheng@kylinos.cn>,
	Alan Swanson <reiver@improbability.net>
Cc: benjamin.tissoires@redhat.com, gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v3] usb: usb-storage: No additional quirks
 need to be added to the EL-R12 optical drive.
Message-ID: <ee3c4e38-6b79-4b3c-bf0b-abb9cb1feb5f@rowland.harvard.edu>
References: <20251121064020.29332-1-chenchangcheng@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251121064020.29332-1-chenchangcheng@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=oc+ObzkQ;
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

On Fri, Nov 21, 2025 at 02:40:20PM +0800, Chen Changcheng wrote:
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
> 
>  drivers/usb/storage/unusual_uas.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1477e31d7763..b695f5ba9a40 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
>  		US_FL_NO_ATA_1X),
>  
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
> -UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
> +UNUSUAL_DEV(0x13fd, 0x3940, 0x0309, 0x0309,

You know, to keep the changes to a minimum I think the bcdDevice range 
should be 0x0000 - 0x0309.  We can't be sure which models need the 
NO_ATA_1X quirk, since there doesn't seem to be any record in the 
mailing list archives of the discussion leading up to the original 
unusual_uas.h entry.

Alan Stern

>  		"Initio Corporation",
>  		"INIC-3069",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> 
> base-commit: e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ee3c4e38-6b79-4b3c-bf0b-abb9cb1feb5f%40rowland.harvard.edu.
