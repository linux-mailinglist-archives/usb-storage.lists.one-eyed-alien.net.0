Return-Path: <usb-storage+bncBCUJ7YGL3QFBBNHC2TCQMGQESHNGN7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id D132AB3D8DF
	for <lists+usb-storage@lfdr.de>; Mon,  1 Sep 2025 07:37:57 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-70ddadde46bsf73639926d6.2
        for <lists+usb-storage@lfdr.de>; Sun, 31 Aug 2025 22:37:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1756705076; cv=pass;
        d=google.com; s=arc-20240605;
        b=kNhTRL9Vi4QMDUW5W+YvtTSk+NJsls42ck4VPXJ7d191DUBHgNCzX2wlShiLNNRHhH
         slAaLwPIaj2OO/RYTm/HnMO6WsVr8GkY7l4WwQmRXjm7RdMc6X6T6dAeHW4Hm2sSggXJ
         mPspliQwKfwsOrqQyA9ZXE04IVUICNUHgkgRPD00yWhfB3OuwAB1EOGoOKE8WoA42AEx
         xfMfUD+bu96TMYb9+NgzLIGJY9t7fRZEOARwZoYxsxo9i541N9yc/VWezUfeUys6Awxo
         gBsEHnbF25cTvsMYv7RoAsVo5Lo0ZUD4GMZMWQKuzoTHrONFVnR4i6RvvhBCxBtMUmUy
         QrBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oWvisF52cm+oeZffVHJ9aQoz/H6W+7MFa5/mRRX1N7g=;
        fh=T8IBKE8Sc5K6kRosJy+VptdFwIn0paLh0PwBSEHZjk8=;
        b=GfJuy8q8x/uszZ0folqyGNmNXstENohmrjwAYkd63oMJpdsWPK8lU8YdWTOLTbXVDI
         xvp+NKoEqky6M7BRvmq7DjHQNXqo0qqCFYJlMtPbDsy3Ln34EfGNx6HxKYQTA06CY2cF
         hGfqbiMMrslA20PGbjy48F7y5VTjFXdGrfzG4glz45HGcmwQDNrPeLMmZYrYcQiDGD05
         rx/UFABeKGTe9EwlqLiLHMaTvBJ9fGDoRxmLzLAu7J1e5WPDSSJRW8caDc9Qem3V3rZT
         cjqzQxOcYOQvCpdPPKsp1BukWVbswYbwE1I7fYRCZPZzBQ73xkvyg3/gCt30cS8vekVc
         8dvw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=wXGEopm2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1756705076; x=1757309876; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oWvisF52cm+oeZffVHJ9aQoz/H6W+7MFa5/mRRX1N7g=;
        b=gzETFeqFy1ylIEMjxdPrh7uA/E5yHtdW+VB68SQ38juL9CZe/+oeF5qZey+LCGczm8
         WCz87AAbv5b70CaCdw/whHthzdmO1TOqkSe1MjF5qRRM1iw4gf69ZxysZ3n/1qFxZ0Mn
         nbyr9l+6t8A+PYO+t8rvk9YQmfCxdCF81DM1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756705076; x=1757309876;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oWvisF52cm+oeZffVHJ9aQoz/H6W+7MFa5/mRRX1N7g=;
        b=vZJG44qrNOw3HVp4/eqIK6HBC87LYpMdNo3c+bZ+UkS/phV9u6EtOpUZje2kd17BbF
         Owguqr9kBD1IqXqfc8bImQ/oZ5DWkp3GvW1CXoupFBS9DkVhnxcFyoTreIWYVIBaX2tY
         VjwJ3I+tGx6kvfV2kFumXJy0/bKgwQd9fNTVzyf2eoRRsJ5TPQZI86IbwHST50P9s+mt
         2De+/yUZ3324oLnkeH79bPmkihd819zLLSHwZHtnek8RYS3gvoMFmnvu8490QFAop/4L
         beXRwkfyurop+y9oVxaTLepvh5yfHNYZn63tduSiQgC65xFPOunis8F3dxeo8hVkKymJ
         HABQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXp7JpaZPMr+0/rkhHhfaYBW2LwIYGx8XEDH7CptMthzJvf4fqz9RBPJ+o0GytcmsLJ8T8EIw==@lfdr.de
X-Gm-Message-State: AOJu0YyUoSJM01Onkz2ZxLRwENjQonLTYy0Ry3icK2x8317P6jdVSav2
	e4/rn6AaoWjJrwlzp00WEX5muW4ltZSKkQijtNjPbcL6pEtnbOTSv2x8vIKLvsxse3c=
X-Google-Smtp-Source: AGHT+IFSw2oA/eXMxZx8ZIXfrcJSUEDZ6/30SbMqgnDugAxDZNwqCgmoSBoEuuRu+bg5jKSr7veHoA==
X-Received: by 2002:ac8:57d2:0:b0:4b3:741:2e27 with SMTP id d75a77b69052e-4b31da0b6c8mr77645481cf.34.1756705076352;
        Sun, 31 Aug 2025 22:37:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZe6iVIfpIjcakx3Ve+PElPmkEz3Xzx4GgwzYcDi8Hqkug==
Received: by 2002:a05:622a:1387:b0:4b0:9c1e:fca1 with SMTP id
 d75a77b69052e-4b2fe6273d8ls59583381cf.0.-pod-prod-01-us; Sun, 31 Aug 2025
 22:37:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXlXsK4j3rUE/D7+kRw4gxBZteb2DRxOlRlEj8dJyZl00r4XVQFuaNjwJfb06nXNw1lSyOcvFFWDgAB5g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:40cc:b0:7e8:15ce:bf9f with SMTP id af79cd13be357-7ff281d325fmr875036285a.33.1756705075034;
        Sun, 31 Aug 2025 22:37:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1756705075; cv=none;
        d=google.com; s=arc-20240605;
        b=F09L52vH9hRF96YOqw2hoVLalqGde5I8CSbe8puD4x+WTXGE4ZrmMud3bwsz863pKf
         yQwObfqFy+gYBpKT+egSl7vEOOtla16lkzla9ERe42zz3Vx81nuqXYBssomlnw3p0V0f
         jEfax26zB5p2x8pV/WshTKl0GoqGPOjnYB7gQGdSRLmrv8CTWtca2wrI/WMcha9WAhyJ
         WbIQXHSp+05Nu9zPe+9EUZw01/16n7MCTzWa+uoh2l54/2HwOVYx9vl56E5jMi2pnkCv
         3Aqvvw9p3M2YaQxFOfFOIxqFK/txf6SdfHYL7NI9xM7tRvgNjw6nBoCgyCrQ+ZeEVhvJ
         3c1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pyzApHvb3Xlwj5SU8K1yDQrdeg8C0yVXY9N1/QTuhXY=;
        fh=m+BYKIVE88FCus7hbs7jIv91k+m+1OwX58oUqtur7ww=;
        b=AmgHE2JRq7D/aZm5a8F1XnenFRvVF7jW6uhOTcMLNW+3oYdGqWWkRIZnNfqo9puVg4
         dyutEA1OuXns2C0dvimXUfQ5fGn1h8LHyTOxSCPdLC+xHxGX0sAsDJxS05mCcTjJ0VKg
         61MCChgoTRTt9Afn9IY/+0HjACi7OipyA4juptYYLQqiXcTmUOwkpQtmQgb2xBY0FnAy
         1hvRr9jyaFC70xbWbedhAPTVBmgKDvZfJMQMvXhgTcJrtvT7OOy5wtNoa+t4J09MpMpG
         mMBL5R/nAmURx637s6LaI9xoVtdT0pQHvS2CabnC+N2x8fBsJhhjq4ivDz/5QkEjq5G0
         huIg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=wXGEopm2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id af79cd13be357-7fc11fc08b4si296504285a.472.2025.08.31.22.37.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 22:37:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7C969601B8;
	Mon,  1 Sep 2025 05:37:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF973C4CEF0;
	Mon,  1 Sep 2025 05:37:53 +0000 (UTC)
Date: Mon, 1 Sep 2025 07:37:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alex Tran <alex.t.tran@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v1] usb: storage: sddr09: move write buffers
 into info struct
Message-ID: <2025090126-gully-tarnish-43f1@gregkh>
References: <20250831192247.1120619-1-alex.t.tran@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250831192247.1120619-1-alex.t.tran@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=wXGEopm2;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as
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

On Sun, Aug 31, 2025 at 12:22:47PM -0700, Alex Tran wrote:
> Changelog:

No need for that line here, right?

> - Moved allocation of buffers ('blockbuffer', 'buffer') in 
>   'sddr09_write_data' into info struct and freeing into 
>   'sddr09_card_info_destructor' so that the operations are only 
>   performed once.

Trailing spaces :(

> - 'buffer' length is now size of a full block instead of being 
>   dependent on sectors.

But why are you doing any of this?

Please take a look at the kernel documentation for how to write a good
changelog text.

And do you have this device to test that your changes here work
properly?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025090126-gully-tarnish-43f1%40gregkh.
