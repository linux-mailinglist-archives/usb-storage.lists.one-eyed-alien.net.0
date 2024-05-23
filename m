Return-Path: <usb-storage+bncBCUJ7YGL3QFBBZGZXSZAMGQETBOJ57Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id 5118A8CD17A
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 13:47:52 +0200 (CEST)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-2bde0491546sf579347a91.0
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 04:47:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716464871; cv=pass;
        d=google.com; s=arc-20160816;
        b=aWyRXJ+7tkNBW5PisetJVdIXeSFcG7Vs40JcQfFDB8cbrmsWOFY4dIvnyKXlus2FA4
         +oetY3MKYkWSVfcTJs7M/yJb6+6ktfVADIj8FIGrGOOD2P6T56i5Qsib7u2mBY2nQERR
         UZcA+ObaAqsl5sXS9rBDSXvDoMSdjjsTLOhPrc6sfuoj7Il1CAOUhlUnkIxCHF4d88Kv
         FhUZsxcrzsCfC0C3KStPt2bcMIAySbSMYhe/4Tcu6hI9tJqelCT08AW1Ab+PWz/84Jt0
         MCLiRxDSBZocxb1H8VmzTRH/44QMFCPItSyjBtfLCRJhWiNxUWWhYGBZBFKsxrIaZxVa
         /2QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZGHWpVqmZbZfjVbO6cRHQVAeJbS5YQGVch1KhWF1rnY=;
        fh=J+IKm/lAPtLNgzRsRRvp7M22ur1fu4XJNhx1ZS4oUE0=;
        b=ZIfnoEY57gJm+HLbwYfYyX/GUOU3w72zd6xAEl8w3RG9CGQ5AJlIMUyoBPYX+B0Bkc
         RKZhijyAenrAFiCVauVfiiJdf1YR1RBXDdlO9byzw/gCOqCOOe/y6j4xJlBVu/EhD7C8
         zP6v00DvZUIVBQKzANPdP+sRVtF6twyUI/BiJFaUSIJPnQinW99P5TmgtG5Z8lImJ3V4
         +BhBiiLOg/Y/KvCtBHFRONbJlPEFmTEgo5l+PtwcFykVExs9Q3447tbiRbvmYKzgGziB
         m9yyzGLKiT6avF0Pp6Wvj4EBKKhPubOFiOuwYXEG326gGvehqgtc5vJnDp/GQ4lk9QnJ
         WpCg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=NMmYC3WZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716464871; x=1717069671; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZGHWpVqmZbZfjVbO6cRHQVAeJbS5YQGVch1KhWF1rnY=;
        b=BGtk+5panrgWxvemsChqkpAE3sE2lHZ9gvtO1wGRmGuQ6k08AnlEAWHxAlqfWUEthz
         KsrFMkm819IV76BQyglzD0vrRgeHpdNrq/en0p51HhWTyz3h+CFhk9VkiyTaO53H+Ybb
         5Z3C43Qcl2gW4og0c/acpfBg3UjBqsAnSQ9tg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716464871; x=1717069671;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZGHWpVqmZbZfjVbO6cRHQVAeJbS5YQGVch1KhWF1rnY=;
        b=iNXV8172x60BijKFhxAogsc6FkfTfdifwNrX/nlEuI4OiPzo5CX7VVvHWjVIYRhu8E
         N/PX5/vGqxKVOPiRFPfSVbsVY3TBp5C8IcN8tl4iYgYBBtgSIrHc6qQn8C9uGQ1RWXls
         avgBemozi3BYuHFpwtAwv0UOVCEGFRsHkQp7ep2CwKdlIlCGkFnmaT2LLn7btu1IdKoD
         mSae7CPO6mlKq7J+HexYEzN5d0qXfHpDkLJU+hAIY/THtXyTjDujZLPXRH/aIEkBwvfH
         C8N5+Hxu7Bi9ORTPqHxBvqZVsYhkwG40lZl1Q/NYg+clm+HJQcgyKGAbGmSuhRTWEXf/
         qaCA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXGrVpya2bpHMEV261wXeKIMI31JioEzsFbZBugrCrAB+yUSVhPpIM8TEIECN5tKCzyAjleXP1c/vdNIsC/qDM/wTdxT+ASghFm
X-Gm-Message-State: AOJu0YwxFywACi6q/81c08/r7vSv3Je5reArtkTPUkVvkfMBovnFmu0o
	BUDOgTt2j5BOZYEgdU1Dug065lmTq/gSTEsylKrPtfmjAb+Vy856XT63fup9CSM=
X-Google-Smtp-Source: AGHT+IGZDSVQMhzv1Gbi79fxXPEmwnstuVyuYmThSncdBVzfS0SNUm7zI0shdV0jzwp+RR6F5Pjfog==
X-Received: by 2002:a17:90a:a885:b0:2b2:a1d0:b61c with SMTP id 98e67ed59e1d1-2bd9f5cdc89mr3946319a91.47.1716464868807;
        Thu, 23 May 2024 04:47:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:374e:b0:2bd:f000:31cd with SMTP id
 98e67ed59e1d1-2bdf00033e8ls28923a91.1.-pod-prod-04-us; Thu, 23 May 2024
 04:47:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW6/++/aGot4PvTLHXjJmpY5Wfgvtq7HBaPrfBKwv/06SbrekxwTm/fpesiYVHyVFrZCbfunJJwixzd5OOn0rmam6twihUjTkl+y56yVftDlpepBHk=
X-Received: by 2002:a17:90b:3143:b0:2b9:9c5f:8049 with SMTP id 98e67ed59e1d1-2bd9f5c3f94mr4604540a91.41.1716464867549;
        Thu, 23 May 2024 04:47:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716464867; cv=none;
        d=google.com; s=arc-20160816;
        b=EGrF1L4UklLLxLjdj/6qMwgYIHmjPMSkdaAjh/xm1wNUY2Kr7MzeNRZsaI0Zoj4+yN
         S7+eQQyrSVdb1PRQvPnVc2UaaTR94z/O2IqrKea9Xuz1v79QCsQWVnCLaCgnarWrE35/
         orJhn2wv/Mxhw1t0FFznRY9aK2FTl/0sJS8o/o9Ytxk3FFpWZd0/7GoHItn27tJ5AixS
         NuK5U3MTKr7bV5KAwzd/nZy3LBlje9xRJ9FTMlP+GEBcVX7loEJAv06Yn3dPU51C/RhI
         18g7xt7/XS8rc8CmhHuzCW5JHre7QzcKFUrTZUnR60JUWPZu+NqjfQobQ2ZOtc7oVinR
         9KgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hsECkxPLFWKPz1muqOtYE1c7jEUGWA2sOzYY9LP+Vq4=;
        fh=O/bTNhn8EPfL1d+9hdDmuy3NpGdjkdf2/kbT3Jj2cMk=;
        b=LIKPjdX8oLiE4I6Kviyex3mSUzGcuLVapZjR8N6YtF7r2oapWPPacOiD3r1zV+n8lO
         OHPymjzrxD1XoVY7r1aX/HSFYVjY91nxLaE0MJpVRDNqXKhRjLbTjISX1QTD8Rr2UNGA
         zrZUz8+Ex9H5wFGkahsHBIDnEM4H6fSc5r8LwPD+LhozFzA1iKyU9wLT/jsbF6bXKz0W
         BTZ2I+ArVwrbocbTCjmxE9hfo1UcuMQB2wPmOKZv1AQy3Iw0tryuiFChW64OX3ql+4tV
         n4TBa7Dh0c5VICUloK/2nKaoDJvUYp6Khu5v9nRY6L7sePR3TqpxOGHoQzLPxTMT7I6m
         igYQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=NMmYC3WZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id d9443c01a7336-1f30c923a46si53283335ad.59.2024.05.23.04.47.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 04:47:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 05A08CE13DF;
	Thu, 23 May 2024 11:47:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F219C3277B;
	Thu, 23 May 2024 11:47:44 +0000 (UTC)
Date: Thu, 23 May 2024 13:47:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shichao Lai <shichaorai@gmail.com>
Cc: stern@rowland.harvard.edu, oneukum@suse.com, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Check whether divisor is
 non-zero before division
Message-ID: <2024052351-demote-gangly-74b0@gregkh>
References: <20240523113410.983875-1-shichaorai@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240523113410.983875-1-shichaorai@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=NMmYC3WZ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, May 23, 2024 at 07:34:10PM +0800, Shichao Lai wrote:
> Since uzonesize may be zero, so judgements for non-zero
> are nessesary in both place.
> 
> Changes since v1:
> - Add one more check in alauda_write_lba().
> - Move check ahead of loop in alauda_read_data().

Nit, this changes list should go below the --- line, as the
documentation asks for.


> 
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
>  drivers/usb/storage/alauda.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..17c73acd3b02 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -813,6 +813,8 @@ static int alauda_write_lba(struct us_data *us, u16 lba,
>  	unsigned char ecc[3];
>  	int i, result;
>  	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
> +	if (!uzonesize)
> +		return USB_STOR_TRANSPORT_ERROR;

Check after the list of variables please, not in the middle of them.  I
think checkpatch will complain about this, right?


>  	unsigned int zonesize = MEDIA_INFO(us).zonesize;
>  	unsigned int pagesize = MEDIA_INFO(us).pagesize;
>  	unsigned int blocksize = MEDIA_INFO(us).blocksize;
> @@ -921,6 +923,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
>  	unsigned int blocksize = MEDIA_INFO(us).blocksize;
>  	unsigned int pagesize = MEDIA_INFO(us).pagesize;
>  	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
> +	if (!uzonesize)
> +		return USB_STOR_TRANSPORT_ERROR;

Same here, at the end of the variable list please.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024052351-demote-gangly-74b0%40gregkh.
