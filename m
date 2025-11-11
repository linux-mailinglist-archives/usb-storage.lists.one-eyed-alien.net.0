Return-Path: <usb-storage+bncBD64ZMV5YYBRBWF2Z3EAMGQEWD67JXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D34C4FB6A
	for <lists+usb-storage@lfdr.de>; Tue, 11 Nov 2025 21:32:26 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-8805c2acd64sf3070776d6.3
        for <lists+usb-storage@lfdr.de>; Tue, 11 Nov 2025 12:32:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762893145; cv=pass;
        d=google.com; s=arc-20240605;
        b=X4JkWlhD46xZlJJ/1Ti9HWaRO39lWHvl0W7Vd+knJbdZzK18SpxV1ss9DIQyHlnhz5
         Mq3Sq7xEZT3+5mdpy2jNIYBpZ4llINwcSs3js1ax24++FYeqdvxdrU2sXdQh+kY6SCxd
         kMTv5kYlA4PMluCGOnQfuWucv15+GjuwxOTuR7foAZWEiNLGJYArSddZ/+WdnsFUxNff
         Sw/l2Hpb5pSaeT+HWUODVR7/l64ujhQQZ2F+oHI63+3U7qVRRd7AsnboqnYe17X/yEHL
         gY0ghxo9duxkilO/u8a3DeXxclUcXs8fl6VY73/rnPzlojWs3LGurhdfoIoWpISYTMXV
         31Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xjMcl0F5K583EinxsfgTKmIotU7RUkrRqZzeZ8jK2jM=;
        fh=1Q83JtknRhk2ji3BdyTKt6/49xnm57K2yPJOgFaN1iY=;
        b=imf9oQQV3fMSV+ixgUgjLBLYPB+7T3LGhlWfyypV4lG5xwIAhuvoJuT6UK1U6Asy2G
         PDMM2//jl3gwjDltZ6rCMDdS3amoLqJ6RIFb3Awzw0qcZqn2rXUbu0rLlbZ3m4FVtn9D
         GMj1B1FOCOteoFSfWVY/UxgMKI/zoof8fQg0jShCWUOzRfATlwLmHKMl/CKeuXvltnlE
         glkO2Uw59QQjcJO/SDSpF+XzuzFx9jmq/zusCkwNDxCwN5x0MsNZKnVCJ9A/lxAqjHR0
         krTp9h0En81o/+3u+5VzZQWZvjRySTMFP4l/eoe6nKizkucLEnhNH4LqQ6yHdMAgY2Q+
         I6BA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=WCPLPD+t;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762893145; x=1763497945; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xjMcl0F5K583EinxsfgTKmIotU7RUkrRqZzeZ8jK2jM=;
        b=NIID47XjHC3gd7dFkYzhfXjrPHiqhQQtUsK3jmnjGLkqYL6ZSKkFBOSrL+x8V1I/ID
         IZT/mRjZID7Op43luPl5pe4BIF7MH1jnc5Lds9FpGEwOC3Da1nsUj477fuQSWTY1wfdZ
         bFqHNnO1wzkNz7HKB76oeLcyOst4iePq6nE10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762893145; x=1763497945;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xjMcl0F5K583EinxsfgTKmIotU7RUkrRqZzeZ8jK2jM=;
        b=Z0X09DVTEcN67VFAgQA37eJAXNRIlWWJEV4xKjd9gajcDQBEkovUMNmasu65gS8GJh
         P2t1JeQA2vTEz/7E99pVkMPmgA+LhOGRRbY0HA6P3HyjxLC5qnN3FvtK0gSqGqHN+bM6
         HVtvgSzAmrIhV1gBuzNF6e9ti5dVu2RgJewQE7YGJmT6IEos/nhovLo0gPsrAqIX4vj2
         qzOfO8y5bX/r/+vVc7BtKYIF/7qNe6XtJhHzqNecMfNXDjlfhH4SGQYnTn3xhi1caVMU
         nO4RQwmv1oinnY7o4CCr5feYfECiYoaTvD32hWKBlfGmkgD0BPNbc0WiCYckGDyV2sSh
         ArsQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWRuU1v1IFmDWzYib8wVnASAHfmx1BqKRBw6Ae8t8jqdY2PnpMLM4flQG3vxBrvEbIKGSckEA==@lfdr.de
X-Gm-Message-State: AOJu0YxJaJ9aB1D3YScNfSfjuJMbWalEkxllD9RC/VXk9rlEBAGAqkp2
	fv54awzzIIOmvDu2pnKCY6NEGk+i/vhT4i0iJvzA2c2LPoOq0RkKEy4jKLVNhzgbaX4=
X-Google-Smtp-Source: AGHT+IFl1Tii1jxq0NdZLtLgyKoQ+Acnt5Ot/nnw5O+h+x4LIO+L2iZ1uhSe9+qPCd45e+lYquGSrA==
X-Received: by 2002:a05:622a:1988:b0:4ed:70fd:1453 with SMTP id d75a77b69052e-4eddbde0013mr7856791cf.60.1762893144807;
        Tue, 11 Nov 2025 12:32:24 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+YY7gGQGHE8TrFmXQPuWP/DpySauAf17VG13Yh49np88g=="
Received: by 2002:a05:622a:409:b0:4ed:7e5c:f41a with SMTP id
 d75a77b69052e-4ed80fa5422ls46143141cf.2.-pod-prod-03-us; Tue, 11 Nov 2025
 12:32:23 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUO3c+Xnh6gApOeJCVHHxKIPyBRWh/aR/qKR66bymnvEsPW1NOeUunmzCSs0WeJ1Vqw2FiJgh66QBi5og==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1a03:b0:8b2:2607:83be with SMTP id af79cd13be357-8b29b76cb72mr79617685a.12.1762893143649;
        Tue, 11 Nov 2025 12:32:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762893143; cv=none;
        d=google.com; s=arc-20240605;
        b=feKb2Frs1cRisFMlB6e+w9TI9zXmd9i2m2+790biEEA/IBUGVFa9PHGSA3ISXONhxT
         zrshzf08jUUdY+0o9k8TqhltgDfzSn0EokVkPyRAb8HbSs/1oJIxjK6bLqN+13zUl4rk
         klfnvPbXZ+QMTs0ksl7VlyEIWf09rkoI6V8EEQkmykSycSscv/Um0BS/uOqWt5ypdAIC
         qcba7HZyn7jWmjb8y3w2FJbK/70aAy8cWQ2X/bTOw8lCOKnm6Varp4ZbSE7YW6sdw+se
         ys07EpC8rm+Y+Ce5tBuyZkCz5YUSFyi1aZhzOmz0rhJNDaJQ754zkLjy+7HZdMX+7OFK
         XrGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dYUm7OJZV3XyKHmf7ftlFF/uvzw7zcdGh4/K0Cu0MuQ=;
        fh=KSD3EQpHJ/QiNRCdGi5ldZZaKDLzyfM2EKpCxDwkbJU=;
        b=kzZBCy3ePEcQiWE9yf4xnYGRcoPn9NgJEnbb6PVAGp0jKsQrjR3DWHZx1fGwxYsG6P
         9yhDRyFGylEnY3oZ8zgcL0xbx2x8OWsrTAhEO0MGsLVe/kMTmSymjUbvleSQqlT6kq4v
         KizgvMh5M+2yzO6DpiI598WHg5fAiHPv+nIu0CAere4N8pZMP0qFcK7LQOY/bZ/3mXFb
         K0O/7Gv4zSFHenvzUu5eDZr3joyH/wKOKmeY/p4yDlLDdnDJ5f07gvF6IIlfeeUPr1ly
         SIeV9iT0JLQI9HvZHPY4aSkfZghFJdKy3heneEsIDqWNzMv/Yq0WzffIM04ioz5P40eW
         n4pw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=WCPLPD+t;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-8b24570a2b2sor771148785a.4.2025.11.11.12.32.23
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 11 Nov 2025 12:32:23 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUhP7omwlEYXmpZVINAI6PVXgHMVIA6Tzu6wT1RyW18LyIWkwB9VeuQ8/dbIWd9Ll7vZdQmxMV43atOVw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsV0u0DTBIaBBuvowJhXpwUNSeUlsoyuqAp4ixBL1T7S/LcStpMLxxBUrhsxja
	drtXYkaM77X2/mrQniwznEn8QhscpUFgN4CBoBMfS9l9LYvkhHP3LHnh3HjQqAs6EbSsiG7/v5S
	Th9BKvEHFURFyqlhT6XmfZjHaTuwShiGI+h/upR+kmvQaH/xEUYZTK+TrAt/f8XfH7qarDL/d8T
	wvMQqNNr6UUVUgC6uldTHTc2Puw+3dF6U5a5lIEaJbl0aX11z1qH8YXg7jvTiDdsCcnSFtNhcpk
	GWxVk9dtdQ37kf3/tRGl/9NkOMMyOFzJUSETcrdGXNBA/hpXl9aUDVu8uO6EpO/+qD81RTQqOS7
	l+5HXquZuQkFnc1FDREVHPk1rSaEIpO2ByOEilNJwYYtBk5BkL309Hfab23liwyHaNKezCmS+1k
	K+Lpq1GLrDWBF2
X-Received: by 2002:a05:620a:4710:b0:8b2:3411:83ee with SMTP id af79cd13be357-8b29b78f9bbmr75718385a.40.1762893143109;
        Tue, 11 Nov 2025 12:32:23 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::ba76])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b29a84c6b3sm53008285a.10.2025.11.11.12.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 12:32:22 -0800 (PST)
Date: Tue, 11 Nov 2025 15:32:19 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: ccc194101@163.com
Cc: Alan Swanson <reiver@improbability.net>, benjamin.tissoires@redhat.com,
	gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] Re: [PATCH v2] usb: usb-storage: No additional quirks
 need to be added to the ECD819-SU3 optical drive.
Message-ID: <c334a466-ebdc-434b-8a6d-73b177ce25ad@rowland.harvard.edu>
References: <20251111012737.13662-1-ccc194101@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251111012737.13662-1-ccc194101@163.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=WCPLPD+t;
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

A couple of things...

First, the 0x0209 suggestion I made earlier was a mistake; it should 
have been 0x0309, as reported by Alan Swanson.

Second, are you sure that your device doesn't need the IGNORE_RESIDUE 
flag, like his bluray drive?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c334a466-ebdc-434b-8a6d-73b177ce25ad%40rowland.harvard.edu.
