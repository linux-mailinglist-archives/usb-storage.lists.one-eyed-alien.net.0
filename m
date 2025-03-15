Return-Path: <usb-storage+bncBCUJ7YGL3QFBB5MT2W7AMGQEF4O4NUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 02252A62A43
	for <lists+usb-storage@lfdr.de>; Sat, 15 Mar 2025 10:35:51 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id 5614622812f47-3f6a5103779sf725485b6e.3
        for <lists+usb-storage@lfdr.de>; Sat, 15 Mar 2025 02:35:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742031349; cv=pass;
        d=google.com; s=arc-20240605;
        b=gvFAvPKaFw0R13CXP3tYHKLONvrIFZwZ9bqLVLZ0GLH/tLyBit0O5vyBkK1mSrOoaO
         hU+7LduPpRnXG0jsr1pbPeC1+CSXSQLY+lN35QF+ji8Yuc9ptvPM7tl50v5waqWjzSfc
         un1nEtXpdQJah75VU7l4aSFOzUb2yf0L64O+vcNaSxFThqIasGQRk4taznRnIsyiPReI
         77Dhc5KvoLD/14GxrfHackRtjAwcHYpJn6NmeEkTYysedD0AjWCFU20bMb9k/1Q0LNHL
         V0fVo+OMH7RqscEBHc56l/DpSTHI0suZNlzi3/Pr1qvr8tOTguZMoXbX39Xcv4MWxINH
         kFsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tpzUbOjdvtN2SAIw0ESAvzOtF/pUJOcMjr7ed6gzxa4=;
        fh=YSBRWJqZsXTVWXPNdyW0DFp3qPWzGhUaygyiZexX4dg=;
        b=C17YjaKm1a/Rq58g+OOmsvaZNPpXRIROCyj0sb5aR7XwPgl7g7BxWluj2LMRAu4zJS
         CCYZtj47ZKAqxc7vO8k1ReJuYU1ekHtG7SaJcru/XU4FEtkeGPlhHFoXGTDylPpFlKhd
         febVxFb3mz6jsNUxZAb/JZKmOLCDhoQsY/NmX1q2sTxxFuBKjASyDBRA8LyZ1aOYxtVQ
         D0X4F9ITFCbYoYsxWm9dOlpRp2dkKgmvDdoCymuVbN2Ozr2LQu6Kzl9H14V/GLBCFknz
         cs7091s2/CJjPg7v4rJN6xBNqekYwt1KOiPfi8+8WSBbNAttTODOpfDk9h8E7Gh1lH6l
         st0w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rXbfcKdG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1742031349; x=1742636149; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tpzUbOjdvtN2SAIw0ESAvzOtF/pUJOcMjr7ed6gzxa4=;
        b=eZkXqEqr1f/qwM589qkDE94euVINtlcDgKgtF5mN4zAtblXwQWtC38sFg64dc78Jt1
         NE3i+FQhSJbq+YRLnOasG4xeljwmZq//2slWeqxfACQfmFPxkbsooAxHuBWqYokYel8g
         Af9aZXE2q/LU6g9wPNIeKkvrREMgrF/HwzkyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742031349; x=1742636149;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tpzUbOjdvtN2SAIw0ESAvzOtF/pUJOcMjr7ed6gzxa4=;
        b=RgtIXqaNHI+Oyu7LQBES639O1NhJ3PtM6xGI2MFuuYgJZK+0KNFrI85pQiNwvptvrm
         IF3jIoJ4ogk/PdJ0DlkR0ewFu3u406tS5vlA3OayT5F7pgXzWwoKSkYKSQx82v2fpIca
         FElqU+ZzzwIEDHNlrwAzDK2KibdVpM8opom812Um9jXCWSTNEeuV9DN5IYP/b8tOWOFO
         kLqaDibkecCDxI2YMYYYC+9J2zQoXrr33wSx01B4pn7vpZxuOdFOQP+AxNJ/F6qkGFWw
         hYRsHR1jg5BQJ+sUVnC4JhTN+Enee9H1e/aaiI+x7tGvpsLmiX9WDOxKXdFwO6tGfLRZ
         J9RA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXK7hwXhXPEXKSfVhdce+7zjMIa/Dau7acantETyjwemBh9DUCcYKb3Qb613HqUeEtxcEurFw==@lfdr.de
X-Gm-Message-State: AOJu0YwomLcWpLWrM0xwsOxrvN1YnWqp01Ck3lMz+jNMl5Lf5jCO2xR9
	qM7a8Yx0yMpKC3RdK1M95fsAbf7E0qMqKg3FINEAER3yGCkIxMyA0LYzvXdPDTc=
X-Google-Smtp-Source: AGHT+IGWr0dUHgZ8i1g5m00Vuuu8hUNg2ThiyNuZ/SG/AkOln63JW/quw4DfBSQ1v1Qc0CbWCq5zAw==
X-Received: by 2002:a05:6830:b97:b0:72b:9d5e:941c with SMTP id 46e09a7af769-72bbc2674ebmr3117027a34.13.1742031349324;
        Sat, 15 Mar 2025 02:35:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVH70mWpo3zQ8sDC00CR6y0JQfd9jVDM3Q0x6WbtDf3ubA==
Received: by 2002:a05:6871:582b:b0:29f:e65d:cf4a with SMTP id
 586e51a60fabf-2c667943b4dls765876fac.1.-pod-prod-04-us; Sat, 15 Mar 2025
 02:35:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWWWz+CYp6Plev1YFx4XLzM44lzvs7gPHwWd1NDG5Ow/p/BxInGKUFJ9vaGgswYy9VQKI+UJErjelfnBw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6871:203:b0:29e:5897:e9d1 with SMTP id 586e51a60fabf-2c6912ce277mr2697483fac.39.1742031348457;
        Sat, 15 Mar 2025 02:35:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742031348; cv=none;
        d=google.com; s=arc-20240605;
        b=Qb5Sbo0qr6evuvmcdp4d8K9hKS+jxQrPsrnOq0ZCTljliXsQfxq8eF0W4iPMqueWoL
         drGTfn9IanaGVqjqJsk6GU2qNh4T+YLpgWgnsYKYCYESuFEj88lXRGegMDZqSOsX5VfM
         6BAa1mGPEGAD3GVznVe3wDFkyhnl9DEP4jTTz1yDtwsPPChu6qXTGlXJ/SF2JRUXq/1Q
         +rPp/x03EeT+4RgY3jSwANeBvFjAJPfcJPmCR9CH5tOebGWivWmJUzPj/GnKoeg4TqY9
         njrs8wAV0LeujF6N1jnVjc+nJgVwb9iodeqqLObOiAjJr7JRgjXV15o7FmuV6PJ1dTJ7
         aTaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XBMc6kz6bhQHr8xnBDyK/NyzuDWyCxcAXnahc2lD1x8=;
        fh=cVHK4dZwCSN2Wbw48PPxeCWMfGEU5z84KDOK/TKrTGQ=;
        b=Xb+F1On4TCP2nq9qFCYCo+KArOpjn5BRbZYuJ4UAKDUKL2cRITPZgZxAnYse8MuPws
         H0olZSwK5HpnyAs6AoDYMBLafCGeSh0qmpK20yX0jRDRalX8Jcmcr3E8GWux6gIbh+Pf
         a3xcgQBX0jgCf6c5sjv3VOYyJaNOq9SaGFGEU9Q26qiCYIIe6+amLNtsV8Czk/FiZcHi
         wTyuzS6mgS2fdKekg83SYijlChIA6E3HQzF8zugjLBMud7ykm9kX7AA/vaIc34DpA/66
         D8R1ZchB7wuQf25UxACYGjcNb+tJ6afh/dEr+cvYHzIU3VWpNxwMMxdyznFVqL9OoxSQ
         JSmw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=rXbfcKdG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-72bb269e0c9si3038145a34.82.2025.03.15.02.35.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Mar 2025 02:35:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 17BA15C4022;
	Sat, 15 Mar 2025 09:33:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A464C4CEE5;
	Sat, 15 Mar 2025 09:35:47 +0000 (UTC)
Date: Sat, 15 Mar 2025 10:34:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: daixin_tkzc <daixin_tkzc@163.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	matthew dharm <mdharm-usb@one-eyed-alien.net>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: Re: Re: [usb-storage] Re:Re:[PATCH] usb: storage: Fix `us->iobuf`
 size for BOT transmission to prevent memory overflow
Message-ID: <2025031514-sacred-playback-1dd4@gregkh>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
 <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
 <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
 <516c8f89-45f2-4d3f-b1e7-29aecfc8cd3c@rowland.harvard.edu>
 <6e125c5c.2541.195990d2daa.Coremail.daixin_tkzc@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6e125c5c.2541.195990d2daa.Coremail.daixin_tkzc@163.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=rXbfcKdG;       spf=pass
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

On Sat, Mar 15, 2025 at 05:05:32PM +0800, daixin_tkzc wrote:
> 

Again, please do not send html email, it is rejected by the mailing
lists.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025031514-sacred-playback-1dd4%40gregkh.
