Return-Path: <usb-storage+bncBCUJ7YGL3QFBBCMOSO6QMGQECHT4W6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id E982EA2AB38
	for <lists+usb-storage@lfdr.de>; Thu,  6 Feb 2025 15:28:26 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5f32b797245sf1183710eaf.1
        for <lists+usb-storage@lfdr.de>; Thu, 06 Feb 2025 06:28:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738852105; cv=pass;
        d=google.com; s=arc-20240605;
        b=UmqiuyxiFs5HKgZ/qt2tXeT7/zaAN4PUzb6qPGncUUM+sfzC+ATe54FQHihi07cv23
         phU21mNfoFZcRT2q0hR1Fq1yRQ3LD4VTWFzQ2a6dC68XtYEIhhSjnfbcyRAM32pj8/gZ
         +Ef6qmJaRqdpC2M80A8515hwichyWlORiEwOXp3jNpBGLqDKNlGyQKimJXHEttTy1ZMG
         wQL1Rppn3sFIVS/zpK5xSHm8RFlsOBOc0OQlWaqBYlD3u4nn16Vi0HFRVQjuy97i4CCM
         L3oieptzL48WrdfHTj43lNSDrWjfiGA47apXohv2OBfeVhMliyUZP0ruRjlSKlZwpkXF
         Zoug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+JYJ4P04Vbgebok7+i05utV6K4ZdkET+1X/nXahqN8M=;
        fh=BQCn/z4GQkeGcT4tZTn/lgQleN4ibTI9kWKuvQy3Dy0=;
        b=kMdNIIAUvypgE8pn9LSJGSbt//VCJZcika2XiFeVY/XSgyGvgSKgUmEDhxOr10APm6
         LDQAbitQC9vhQZK8bHKImzgQwS/5QVvWKQwZH9TnlX8NLoyvWsPg5bzSnFyEvEY4kKVU
         vjG/wMNr+6PJ8CVCq1XWczDAKvahWahsJEhTn2ecIF2Ktgmc8RKrzViJIuw2Ncbb8URk
         2NiaU12J0pVPKTUGy1XKCb27CtFtNQCsFulvhOjRfwD9Qe9dAzTXhL63amUnkLS/lo2S
         K1WZ7hHOhNjRMqfGSSUmE2lnFl3i8RbL66wj1e3ffAEi+SDE/ri5D+g1Uc3IgSI2MjnU
         uIEw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Nyx8VuQR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1738852105; x=1739456905; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+JYJ4P04Vbgebok7+i05utV6K4ZdkET+1X/nXahqN8M=;
        b=dMACQF0FYbtfWPJSxmHIhAwhDAqQGqI1+IBzjhPc6XyTWyB4oU6UfTq0B+ZKEQN5pO
         vrVvL56bPRjHPHD8kvYTDbp/yvXAQC6bxylBDYKsT8O7X4hcadC6hY43lHd7KWGEYmmQ
         PV5WCr6Ut1SSMWKew2w+8EvkDJm4bY9dbyBnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738852105; x=1739456905;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+JYJ4P04Vbgebok7+i05utV6K4ZdkET+1X/nXahqN8M=;
        b=QZsBCfB8up/FtHpMIBIs60tz54r7Q840XXq1ZdJ2uxTb4FPUvYN2WIlPwUfceLRacs
         6EZk1xa3HP5xaUpZJNIrmzHACMhPbtXh1M45PfHpvaQvgOojOyuA2OVbkXQDpIMq05wc
         CAW+4vzLUGrmWDNNQRUAZ07g8Yd0eOjXGUa6/Hm9s5MPCh8C1tNiAbkEGtGcxz7VtQjR
         Nl90f1VpIPuC3S72H7m1pLzLkYf0NALnEKI2vhBHsPeECngINAAVIXLZAmjazNCnFyB+
         PipASV1RCCDHb+pbtswWNCOQLRVyTOsC4XSH0cRby5Guj6yqQd4QIPecQLsYTmYUJd6X
         eu7w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUIFC6nBFdpzcgH18FhNffSRcEcpNq0rw9qWmxzO4hO8ugWca+71x6kgyokt8jybtvGApLvtQ==@lfdr.de
X-Gm-Message-State: AOJu0YwmNf2JkjH2UVB8f2kOO+GHYCDEU6hM219h7nScFl5DoMbTiFd2
	ny3nurzwHEPM5STFlTXmy2CKQQjgxJJZCcz6QHxG7kgCApS7eYoy+2YkQJ5eJxw=
X-Google-Smtp-Source: AGHT+IHL/AW+a3lT8K3qCjKYzAwzxP3oboMluhVLElOhbzIPcErmDzQIMtXzmy33G9NVecsbM7hTjg==
X-Received: by 2002:a05:6820:208c:b0:5eb:b282:5916 with SMTP id 006d021491bc7-5fc47a44c4cmr4853486eaf.7.1738852105557;
        Thu, 06 Feb 2025 06:28:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:de41:0:b0:5f2:b660:8cb5 with SMTP id 006d021491bc7-5fc51beacccls323477eaf.2.-pod-prod-09-us;
 Thu, 06 Feb 2025 06:28:24 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX8/J7XZB46C/8o88Y/dAfbCizuBTF+8yhVuQhVX4MW8tag6k2cLwjkgxmr46SMPrw2ejyb/hkjaL0rPA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:3142:b0:71d:fb64:b601 with SMTP id 46e09a7af769-726a427f8b0mr5402762a34.27.1738852104451;
        Thu, 06 Feb 2025 06:28:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738852104; cv=none;
        d=google.com; s=arc-20240605;
        b=KsABJNyA4FftHBzjXbSJ2c3V+668QBDN1aZdhxvjfPFEJqkBIy8Jba1daCyqlum/JL
         bYk1g4tXf9FGmyfJ1tjTf6Q51MY5zKfMHaD5MYtW70G/2gtd/FPLeIwhSpAQeHy9PvrZ
         iKTDJ9bUe2PYh8ER2eKtgpff7NUJCCyHGFpthJga/5dwYyxa5J2h44upUfrAFu5NCOEu
         Vqo+IXxOOwcTbJyRwEhYqW/mPEefq+feMxwZEE2pBadVr4CO+Nl9mP1j2H7iGwjLDQ/n
         gvZz5Cl0t5Fjb8gS2uOVBdotv1aA1AOeYHwvfurOahjMBM96fQri2LHoiNKnvH4Eb7o+
         sb5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3LPInHrdWgtBcTarHUo+5jBw16jKM8F3UdKpNI4UfhA=;
        fh=BfSAqhZOeEqBCt/KHA8ftGz3SiBnHym7eoG6cE2bIKw=;
        b=Fa1raiUul7tt2ovW7Dv+XDeIi2H4s3Tmcs+xaJ/tfLhFVP4C2Y+3Umd94SYOFDuWN1
         OtiPOP0dnygjmWpTDu5sDMCTMnbNISqpLzcWaUZvEG30nXw+QnJzURRxAXoK3vj2Zj1b
         ATngzLtSBv7bRZjIANYPIUCEIgeCyIykvXSPUMHjHYxVysf7zqXi241i8U27hDvw+490
         HU0Ectt9jijFic792W6IeSULVRXjTQvxfMUY3Tv43V/tze8eZoU4Gn8EUSCxBEUc9VYj
         l2ln4zMKqZaEOmBvk6CTyTdRQFtOgListIOkFAmKzGKqy1PEwV5hNfdZ1qICMIgM/onl
         hpqg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Nyx8VuQR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 006d021491bc7-5fc5461eb88si1051093eaf.79.2025.02.06.06.28.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 06:28:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6616C5C0594;
	Thu,  6 Feb 2025 14:27:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80CFEC4CEDD;
	Thu,  6 Feb 2025 14:28:23 +0000 (UTC)
Date: Thu, 6 Feb 2025 06:50:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: WangYuli <wangyuli@uniontech.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	zhanjun@uniontech.com, guanwentao@uniontech.com,
	chenlinxuan@uniontech.com, Xinwei Zhou <zhouxinwei@uniontech.com>,
	Xu Rao <raoxu@uniontech.com>,
	Yujing Ming <mingyujing@uniontech.com>
Subject: [usb-storage] Re: [PATCH] usb-storage: Bypass certain SCSI commands
 on disks with "use_192_bytes_for_3f" attribute
Message-ID: <2025020649-say-maturing-c061@gregkh>
References: <AC1BB7F0327EFB9C+20250206054107.9085-1-wangyuli@uniontech.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <AC1BB7F0327EFB9C+20250206054107.9085-1-wangyuli@uniontech.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Nyx8VuQR;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
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

On Thu, Feb 06, 2025 at 01:41:07PM +0800, WangYuli wrote:
> @@ -369,6 +370,13 @@ static int queuecommand_lck(struct scsi_cmnd *srb)
>  		return SCSI_MLQUEUE_HOST_BUSY;
>  	}
>  
> +	if (srb->cmnd[0] == MODE_SENSE && sdev->use_192_bytes_for_3f == 1 &&
> +		srb->cmnd[2] == 0x3f && srb->cmnd[4] != 192) {
> +	   srb->result = DID_ABORT << 16;
> +	   done(srb);
> +	   return 0;
> +	}
> +

Please always run scripts/checkpatch.pl on your changes before sending
them out so you don't get a grumpy maintainer asking why you didn't run
scripts/checkpatch.pl on your patch :(

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025020649-say-maturing-c061%40gregkh.
