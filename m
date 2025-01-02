Return-Path: <usb-storage+bncBD64ZMV5YYBRBLX23K5QMGQEVGN5PGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F549FFB7D
	for <lists+usb-storage@lfdr.de>; Thu,  2 Jan 2025 17:22:08 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6d92f0737besf162930646d6.1
        for <lists+usb-storage@lfdr.de>; Thu, 02 Jan 2025 08:22:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735834927; cv=pass;
        d=google.com; s=arc-20240605;
        b=CjdZiGk49ZTBu28r8LQ8koggpK6pZ22rTs7t7YBxNSFscBEtMp9AhAovDtPoxAwfp4
         C/AkoRLUtMEOvvWqwdO/uq26LlzI2Uag2fCRV6pKdO8g2GY/C9BT7RFZ+vUVFW2PFvon
         i6d1ogkv72Gg25Hg7lMvEZrOUmhgObSMxPhx1cS8oZvhkHopL0fpuasRJWdJ0Xm5HQgZ
         tpaEN+MK7RssUGDcutDFT1n9bJrMcwAUOskTgBe0LeRIxe1xuXk5QaI292LXFBJ7gXos
         VtXbuLv7KSkoxFMQ1c+NZz3oRC8y0bOd4Ymrf3F+TISWoPlXk4s8VFHRYagZsNxCF3Eo
         yt9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZfsIt7ChOlqw6ETNk3X9MXf50nYRk9XM1nFyoM56pnI=;
        fh=rxzrignhqbXqVN7aep8IbfouCf6PAudBnVSVyNWW+WE=;
        b=SSu+559KDGXBcQt4mMWTzdjRuFg6+r7JHNlgUiO9vVjdcYUTxYWyL0kcbllTb0j3eI
         C4QqzUYayeV5Ilb6e7lfTCzwdOjZY1LP4lKxwKyD0FprjmoIqoZRF6u6HAcSZqDGLcqj
         0MeO8TsUxz49elVOqi/IcY5C1LC8L4MQp3wOLwXSd1sotN/WzHcrtJaINaeA4X8aq7SG
         FX3mjizT+kfdP0WDkMBRtk7AaZFfmjOvfjJmpNJ5FCBsCiBa5C24TxdXBvVEHEiAGNz/
         fh4p9nNpVNyu0cntI3hPfYkLWiKWmHoUg01IoPTj8fGT3wpiHbjtH+WLVYgsb4Hsde8m
         mRyA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=n+Dpb78x;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1735834927; x=1736439727; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZfsIt7ChOlqw6ETNk3X9MXf50nYRk9XM1nFyoM56pnI=;
        b=iBhAkOzMdpt/oCcbj52iwQwfxdnDJykoPAh4TXqCIJGLZD+awv6n5DRHjl1gUn8oKa
         85yWisC6zs6zpJ8IWrvID+jd4LLV4naJtbB8RBNsXI34Qak/tOxJ6NL1meOBF0gjJW7J
         /dKc6MpvFAX33SoVYpdghpnUoyROnYU080GlE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735834927; x=1736439727;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZfsIt7ChOlqw6ETNk3X9MXf50nYRk9XM1nFyoM56pnI=;
        b=O+HLqobJj19pEN/HReaVEG2K0HQ1aMTOe/iYqENY3PampizeZD9fHqkvv+ImSNVGEC
         xbW2dFcqN2AEF/VrXK9T5B8VMozyaOEiSYAYo4frNHXe4w/GueXOoXQk9yfg9bEQi7IJ
         yLtlV3qBQGxPIayb92vHNPpGWkHIinu0ei44BLH6yQhA+s/F3y+2816wZ2yavP5pJXIU
         tXAPlY6HYRNMSfgx+mhUiDGx5ldKSxCIID4DAhOAP1j0BSRYQ/6WUWwzRxu/pjKZlPiS
         VXCGPNQMoY6sq27ttKa5LQFBENMLRWl1+PVNtLDtuKs5YZaNrKIfe2aAopFvOr4o/MFC
         bRLQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV/zSnOVLYAwqEWfqVQaTTjGNB5azmM857MBmMDG7GjJj9ba+ybUzwD8xXC91lVgz3UrsNzFg==@lfdr.de
X-Gm-Message-State: AOJu0YxuXsy4GStFG8y/iXhy2dEDE++lVJkdF1m/GserSex9QWIWCArc
	IKq0Qz7WqK64WiaNRkm+5JECK7Xt/V4EgdOBWwXskef/9aKwMlw95DpKuXIx4o0=
X-Google-Smtp-Source: AGHT+IGzZpIuYvvrMQrfpBGjK9AXuYZJ0HAw5spca67M3Rx186GPzWrFpCxqnqwmyU+w9E2WoFSt1w==
X-Received: by 2002:a05:6214:240c:b0:6d8:850a:4d7d with SMTP id 6a1803df08f44-6dd23320d1cmr864286126d6.2.1735834926614;
        Thu, 02 Jan 2025 08:22:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:256:b0:467:5eb7:7178 with SMTP id
 d75a77b69052e-46a3b198c89ls9914581cf.2.-pod-prod-03-us; Thu, 02 Jan 2025
 08:22:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUrTTyERWBlddSIhauQ/wbf7v+MmXFrhZtMFzN4MbxTurA8xF/4DT7JcioXZ4SKbji20ISLVFDf424ZLg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:454d:b0:7b6:da92:fcd0 with SMTP id af79cd13be357-7b9ba715ea9mr6899144285a.8.1735834925288;
        Thu, 02 Jan 2025 08:22:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735834925; cv=none;
        d=google.com; s=arc-20240605;
        b=FlEZY7bt6w+F5sRebgcHYInQewuS13krXm+o11eQqyhaVSUyeANGkplKoqXuVAnaSy
         EW5zQ6vgFkSUol5m/Qf5VgcD/cparvmjd+UHr0qeuL60xcuHqk+JnwMeCefOaDXIUL55
         QDFK80im4g60H6JjxTg07wze1JurUhpdv6g9F4xLIQx+L+2ETKEnHNBNqTVe7a0shZ2H
         3FKUCC8im6kg+c7mMf6yMMhvdsxszeoOVFzx8VXI2TPIOeLGWwofCYzLCBaGghWcyVR+
         tuIK9UBRrt7oSTs19T5Cc6EJWEADMIx8tDycDUhD8TydmvjIyLkC08G68N6r6BBC37uQ
         W89A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tWHzBldpxbOCgZcOrvwHEBYJhcR2y22SwrCIPpcGRuw=;
        fh=P5/ePPyCneTiGvIHmQb5MgupSZVtkM6XxmVMTb1j/Xw=;
        b=Vfwh8S9GOwzHilgUGAOAQ6AbVaPUVtkrwtvlULYcZO6OUui2KV8SDNRWefgSNP7qnk
         cK19NdHemIAxmf7ju81eZ/UVxNLeqjn85rfFDE6g/EMRBDdjU66v1itZ/wTnrctCghHL
         x3Tg6aBFnC9MZQye3PvE8Kf6jKvAVCt8inp0AqEgpVYjPJDUv1zXYPkOqWkePwWjsZn6
         qVSEhDyIzfkG256zrTkyD6dSh1a5YAmz33GCW3DpYWIJOUee5q3SzxkbVlNEJ1x5bzVp
         T9Ng8RECbeNgSPdYoDkbDlG6pioxJA/N5IOdrTwAqnaJM9PbALw16npU55J5mInqSDFr
         Y5eA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=n+Dpb78x;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7b9ac55005bsor1824457885a.13.2025.01.02.08.22.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 02 Jan 2025 08:22:05 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCW7vMtjXROH3Oh2amM1nYvOJ35b79vJ0D/ymMK+zzT5QNW1hrRm1wsdM9d0ow5F18otw4L5NG0LDXPWaA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvksstVBZhAEIhG8g3RCorsDURJ4nj7GujzhzmTVF+5p4LIbVrhFqusdAneijB
	Icn2iFb94XD6+QPWl1WpozkfgcrDWjMEX6ebwi1kIArEFD4AMlYTMpNPEJ6YANwnKFE+9Llp4aI
	HdePr7rrGzZXoQ+mNqsirbyMl0MFrYn9xT/Qnec8+NPSAR0QAX0YKesjdxb+BJq02PS5PZRb2rH
	I8omg1sV4B0hIcEA3c0pcvu7fTq9DklR5KLyRlX6lkQe98u+OfiA1KkQg==
X-Received: by 2002:a05:620a:2911:b0:7b6:d870:ca2d with SMTP id af79cd13be357-7b9ba716910mr8209001685a.13.1735834924825;
        Thu, 02 Jan 2025 08:22:04 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::5653])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b9ac4eef11sm1193928885a.126.2025.01.02.08.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 08:22:04 -0800 (PST)
Date: Thu, 2 Jan 2025 11:22:00 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Lubomir Rintel <lrintel@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	Lubomir Rintel <lkundrak@v3.sk>, stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb-storage: Add max sectors quirk for
 Nokia 208
Message-ID: <729d6c93-a794-4102-a191-494bf86df219@rowland.harvard.edu>
References: <20250101212206.2386207-1-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250101212206.2386207-1-lkundrak@v3.sk>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=n+Dpb78x;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Wed, Jan 01, 2025 at 10:22:06PM +0100, Lubomir Rintel wrote:
> This fixes data corruption when accessing the internal SD card in mass
> storage mode.
> 
> I am actually not too sure why. I didn't figure a straightforward way to
> reproduce the issue, but i seem to get garbage when issuing a lot (over 50)
> of large reads (over 120 sectors) are done in a quick succession. That is,
> time seems to matter here -- larger reads are fine if they are done with
> some delay between them.
> 
> But I'm not great at understanding this sort of things, so I'll assume
> the issue other, smarter, folks were seeing with similar phones is the
> same problem and I'll just put my quirk next to theirs.
> 
> The "Software details" screen on the phone is as follows:
> 
>   V 04.06
>   07-08-13
>   RM-849
>   (c) Nokia
> 
> TL;DR version of the device descriptor:
> 
>   idVendor           0x0421 Nokia Mobile Phones
>   idProduct          0x06c2
>   bcdDevice            4.06
>   iManufacturer           1 Nokia
>   iProduct                2 Nokia 208
> 
> The patch assumes older firmwares are broken too (I'm unable to test, but
> no biggie if they aren't I guess), and I have no idea if newer firmware
> exists.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> Cc: <stable@vger.kernel.org>
> ---

Hmmm, maybe we should automatically set this flag for all Nokia devices.  
In any case,

Acked-by: Alan Stern <stern@rowland.harvard.edu>

However, Greg's patch bot is going to ask why you didn't include a 
Fixes: tag.

>  drivers/usb/storage/unusual_devs.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
> index e5ad23d86833..54f0b1c83317 100644
> --- a/drivers/usb/storage/unusual_devs.h
> +++ b/drivers/usb/storage/unusual_devs.h
> @@ -255,6 +255,13 @@ UNUSUAL_DEV(  0x0421, 0x06aa, 0x1110, 0x1110,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_MAX_SECTORS_64 ),
>  
> +/* Added by Lubomir Rintel <lkundrak@v3.sk>, a very fine chap */
> +UNUSUAL_DEV(  0x0421, 0x06c2, 0x0000, 0x0406,
> +		"Nokia",
> +		"Nokia 208",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_MAX_SECTORS_64 ),
> +
>  #ifdef NO_SDDR09
>  UNUSUAL_DEV(  0x0436, 0x0005, 0x0100, 0x0100,
>  		"Microtech",
> -- 
> 2.47.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/729d6c93-a794-4102-a191-494bf86df219%40rowland.harvard.edu.
