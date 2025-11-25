Return-Path: <usb-storage+bncBD64ZMV5YYBRBMWLSTEQMGQEP7EHKEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DCDC83411
	for <lists+usb-storage@lfdr.de>; Tue, 25 Nov 2025 04:42:44 +0100 (CET)
Received: by mail-qk1-x746.google.com with SMTP id af79cd13be357-8b244ef3ed4sf1489010185a.0
        for <lists+usb-storage@lfdr.de>; Mon, 24 Nov 2025 19:42:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764042163; cv=pass;
        d=google.com; s=arc-20240605;
        b=At789tdbWoC74qp0FRAot0xTuj4J+YzdQG3SuOd/TsqnvLneZzYr7eHwKwy4xMEDRw
         B8TTaMwPkve8dTCOkk68k6FG6SdPfIvJGWiqK3K/lgffMsvoaEdVHBEzWly8qI+UWoPJ
         CFI01r+mZEHrfbaH3lPiNuiurIPacCgkHJqN7rBEViFMmWzAVf1xIUR9L90HPZ9MCxZn
         737k+RaMULeq947YUVvI1HmjIfazk8GRUtQXP0bvKjUra1qOgDlc2aPWMOkm1j9oXhRx
         uIuJ+VgpPl47vhPgNnS27zP7oK+gzWEtearC6E+fcR6vhbj75mFnfu1iAcb8xLCATPBg
         6FoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+ELD4C59+1/6hrBdgCJz7O+cOylddmX+Qdt10R7/G2I=;
        fh=4vIjj3IdZvgQfWrP8h6xsiDIopc1cjbYG+CfiS1O744=;
        b=WjfOQQ3fRNWIgu+y/sy67ofqAmqz0qVIN7WNcmyLQ02tTuSqXxpQwcG2NMmC+/vaqp
         o601mNlbIh2essjlwMoEj2IWrJ8qTDh3uWGDVA609PZprT5/GpmgQqEb84dfDLc7/eS0
         8teZSdonnQosEPx7hPsaNZXuiytMGzKm2m09w067ypPKgRtargvr3ZOwh9+B0C0MCKkQ
         60kU0j+4k7RP0LuVtLNhLxYacutduJyWfep3HND6LUUW8U75xMLwdGVXKNcrHtieumHt
         YrjQTn9kLVKxZ1f9Dy2kZtwJa0GqsVLlJtLG2KF2y54/xYnz72EbWTBdE1HpH+BxZJCv
         FsOw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=RFsqX0bq;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1764042163; x=1764646963; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ELD4C59+1/6hrBdgCJz7O+cOylddmX+Qdt10R7/G2I=;
        b=hwr0QIXmhAsl0A22pJ+TiBm6lgTpyOMgFvOChln5TZmJWaypNj0Lt2PjsPPNedkCt8
         P13n5/DPAmaZM7gDVsghunplI9+D0LFJ1TQrchwiDvycFz3T7v6ihNEprFuKsXf3erU4
         MFVPoT7R2u1TtKd3dVfGsk9alECZhs0MAf32M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764042163; x=1764646963;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+ELD4C59+1/6hrBdgCJz7O+cOylddmX+Qdt10R7/G2I=;
        b=RM/m1PC18vKloFkdU91OJNITlNDKt70DlMxxC5pGGT9zA8ghRb8B5RFsuFui7x6tni
         HftwJcBAYOjOId3dK39ROAWYN+0BR1LoWR4jLHA6Z+/yHXAEsbEYy6KhIkjXyswjC6nc
         OmJoFAXmoH/isBn+BnGTI+q86L1wCOXltHLAHoF4/J4s8RQ6C/pvkl06CFZDnkOlTRrJ
         aeHh2aDuE+mFFI8o00GKbCUeuxsLpLUnwyNWCf6eaNo4IoD3MfJbUzRyIYFXxdaO/saW
         TUPCq3zO3U3FkiafYfvM955o7ucW67lZzuvxSXF3iuETinmwn9wqwbkVFFutc4OImmLh
         GDhg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWM3nV8/SbaaUdU3ONdkLbX9SkyWR0Fgfd2fhd3d+OKeRxe6X3tmFB75w4le0iShnWhEiM07A==@lfdr.de
X-Gm-Message-State: AOJu0YyPPk3EB8S4p0z9OAn9x9PMB/Nb7PjtjQY69qtOxQck1Ui2nr9p
	o3Cor2bw2+M6Jo91REMB+MI8EDkaVcPGz/qa520O9PaBPnMHCt95BJzztv3AABvOlKk=
X-Google-Smtp-Source: AGHT+IFbZlfDCb8zuJugUknUV15q+RJTPY2JuyQoKQoajA6AuSG3C4NdrrLHF5PYTb6SWSs0hPLclg==
X-Received: by 2002:a05:622a:251:b0:4ee:23b6:6f6b with SMTP id d75a77b69052e-4ee5880248emr230513051cf.5.1764042163156;
        Mon, 24 Nov 2025 19:42:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+YlIdHAKSFhO5k1t5HNjN1SlUFjwfHiGRdpOWe3gDxw2g=="
Received: by 2002:ac8:5946:0:b0:4ee:1f69:fde2 with SMTP id d75a77b69052e-4ee49270f16ls127411981cf.2.-pod-prod-02-us;
 Mon, 24 Nov 2025 19:42:42 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUFGDUw4tMJPpeDUZDJ+ZyCgRBV4bXoQDQMwsDqFMH2uNPjo72bFo1Vaz/k4jRNb3yWQtczCKr/Q2nApg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1a9e:b0:856:60d8:3688 with SMTP id af79cd13be357-8b33d469a69mr1697950885a.47.1764042162070;
        Mon, 24 Nov 2025 19:42:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1764042162; cv=none;
        d=google.com; s=arc-20240605;
        b=C3f5syz0e/L+YsGg4iqRVyjLNQrJnSXosJrE84C+4FjECWUgG4ts17shcag5U8SzAe
         i4LzPRAu2a1LBHVClP7L+IoeCpiHQgDcpR9kuQPEAWaCQ1RjpmZrQiOs7SZ3rNtStpH5
         Gy0NDhVsVBqYhZmAqADjA0mQSZutR3TMVPN8y2gTmrSc+7x4AF8rkfC8wcwIfyek9eiN
         wPB2mS6uSs4jh0AuZdkVOYwBcV6efb4oPUpY1T7Oltkb5v/mFKAGb4VcYN0AzYfi/65a
         55dsjh9taOayRB9qZRv6xU4bgEhupevlG9WDrnIyf2nHV9cMp+8l4HQ6wxWzAGikNhXt
         O93A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+TFoTNMzp/k6u+QRFIfJqVSLs8SJQbQMQ/Tiai46+L4=;
        fh=V0rE/50PMQ2rZkUbrZGSMVTkAAHTPoQdY98+EaE6jvo=;
        b=ConMrlOoc/YE9X/xdnWDF9d+jDXEo6VPp/K6sW9SqA1bvDs14OY+TesidxYuyiLR61
         Qc9zGk2NHYZp5Gwi0ma3iVSc6ZjESK8KPnJUQEo2vIynVpHOfNY9rg8womhCH71KOoLF
         GvCT7WbFgbRRpE+gAZU4/1biA7Wk7f0iJWQxcRmaRasnPYD9P0JTyi3+1i4eYYTwPYor
         3MnQ0e/exRbrKGRssgB1n7wgwaNC1wZzOcXlDoWhit1Dt/b8dRsQy3xO4XTbMTIZ0HLN
         eA0ftYUNk0cCC9voyIReDE3Ir3L2OhtM9OMVAjBw2c39Sj3hPw31fXKVTiq6yC0IRZY1
         NBuA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=RFsqX0bq;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-8b3295e1f92sor419149685a.15.2025.11.24.19.42.42
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 24 Nov 2025 19:42:42 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWTgiwTbHi2i47YqHNsSq4rb2be5jTk2pXniqkXRbhSAxGar9AnJqjatSGCosJmhpHGEvCYdNoUnK6YYQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuWdOgFRNmV2hdor4CmI3aFzLKhD1IuXvwpDqpwQ2TCMV1ohn5zN1mygfXwznE
	kAGsZ+t5ht7tnnCK93sCq3wh7JUz9XAS259QSJBEwTZ1iCX2aRgwNot+0p8qdgkrW2jxLDzAno3
	gbRQ3+uErlF4SvBYnX9ibTRtd3Lr2ubwdHB+tbO2XQJ77D5v2rV/HTtAO06KI8sm/H1IoktmTS+
	LPIZ8+y/XoAM3GvlTiwxbxLZj4AH6uSDI5uVeK1HoqAluB4SraF0hk+7hCzEq+FUI8auFNpYlJc
	O8tDH0zyu6wnALDzABwQ6jdD2zyZBqR7dKocu/4pAOPAS68RXID8NWutWgdmOFdXef0QUP7J9KD
	wxmJ8Q/V0wIY5IO9jIOaCOc1CGnZG3cgcb7mkwtwZQeMOHEoILFzAsUQ71y7XwmaImh78DmKNkF
	Dnm2axgiKM80XK
X-Received: by 2002:a05:620a:294f:b0:89f:5057:974d with SMTP id af79cd13be357-8b33d1cfa6dmr1957627785a.10.1764042161565;
        Mon, 24 Nov 2025 19:42:41 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::eaae])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b3295c17c7sm1091938385a.32.2025.11.24.19.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 19:42:40 -0800 (PST)
Date: Mon, 24 Nov 2025 22:42:38 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Chen Changcheng <chenchangcheng@kylinos.cn>
Cc: benjamin.tissoires@redhat.com, gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v3] usb: usb-storage: No additional quirks
 need to be added to the EL-R12 optical drive.
Message-ID: <2c631069-cd12-40b5-88a2-c5b83a9a9043@rowland.harvard.edu>
References: <20251125014422.12721-1-chenchangcheng@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251125014422.12721-1-chenchangcheng@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=RFsqX0bq;
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

Isn't this actually v4?

On Tue, Nov 25, 2025 at 09:44:22AM +0800, Chen Changcheng wrote:
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
> 

Where's the changelog with respect to the previous version?

Alan Stern

> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1477e31d7763..939a98c2d3f7 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
>  		US_FL_NO_ATA_1X),
>  
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
> -UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
> +UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x0309,
>  		"Initio Corporation",
>  		"INIC-3069",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> 
> base-commit: e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c
> -- 
> 2.25.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2c631069-cd12-40b5-88a2-c5b83a9a9043%40rowland.harvard.edu.
