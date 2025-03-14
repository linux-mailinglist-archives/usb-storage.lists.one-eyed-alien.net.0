Return-Path: <usb-storage+bncBCUJ7YGL3QFBBCMEZ67AMGQERNNDKGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F21A60860
	for <lists+usb-storage@lfdr.de>; Fri, 14 Mar 2025 06:43:38 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-2c25d48cce8sf1822725fac.3
        for <lists+usb-storage@lfdr.de>; Thu, 13 Mar 2025 22:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741931017; cv=pass;
        d=google.com; s=arc-20240605;
        b=lp1ioIBshUg97jEhb69MhjKdBf+bhZmsabaCrlHfViIFfEMtxPcQYkDhvccTuOggOT
         vtp2Gr42c0M44F1OUTEXTtD5lNbY1gyXBHBFaDczbWg8MHEIEemkF5FA2htxFLSaO+O4
         MvLH3ZYY50nyELIvOBpHlqH5AgFMXalyQ8ApuClC6usAtcPbHOPJ1Srpx8Pno3ZAm/9B
         X0gVfh81iwEKrcvF3ylO92XVYdYR0+es9In2VR0THIj38/wERqLDmMqkNsRPpi4K6xiJ
         cDvR0Dr/DP5aSlV+ZPR/QD8ouAFSwB1nokkMqtgJXQPAB25rpl8RLC88m6H2+XILj4gA
         tscg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SVbcmWg3im0xzy0R2PNMWRCV5xNGkhu1NogUkkUkB4w=;
        fh=cIF2V71/swyuHtok+Lhk7JIqrtj4Mu6WHioZ+rRPvoM=;
        b=ixyYqOiKsVtus9KL3fSbqcAlMYYT+01dj/lIINoW5pHOOK6x/mq4OGzbX5mT1GB1q9
         mhaKBy5G7zQFWPWHttfP03SBbqW2ppsQwbEm3tTeJXd7Y+t10U7h/dgwg2liXzHxG6Eh
         sNlcoTLECo08I0c6iMC8Tj1ATlqD7T0wgp7KAmhr5iCFZDA/NZtUOGMS6NRZ+zjG1hWN
         DLPt+99dhuUweqsmDqw+fmVkGgxP60b7tVxYClbTjJKk0kzZUysdE0EVGRncOact01Ue
         gUv5pGBZeZEwcZbJqkKV0P+bA81sLo0DvZlDjOTam3IM7hKePVQebohSJzJb2GZNQ/7v
         bbKQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=fbqzcAyL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741931017; x=1742535817; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SVbcmWg3im0xzy0R2PNMWRCV5xNGkhu1NogUkkUkB4w=;
        b=M/msCKev0mHImSpjjg7PhS9EkyBKXwTg32uk6LMHljk3/ABXjfaGsfjYeogu59K4FX
         fRzpd5JA8Q0/Q6NfYEhLGLDiKEpT7YYh8Tmu0/16wuThZfJZ41ORvAHTZEf58d0lJpVj
         es/em/Iz19SCrVr0cUuKC0LNsmsgFuZlUQuUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741931017; x=1742535817;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SVbcmWg3im0xzy0R2PNMWRCV5xNGkhu1NogUkkUkB4w=;
        b=uPIDz3dHFKkcliS5L78uu48NeZenGntPR0Rlbsvev3ZINFAyEMPOk96OV8qbgH/lBI
         S/xjncxnCjuqvoXCkGdYJQB7WFAgXceH9oNHMVzCNlWfM93a6aIzv+cNXEzyyYNYwi+u
         SvtIz4yruuZuXCxi+cCHwyj2Ll1WzEPtPN8ysf6LVS6E7w3I7GtOQPp5ju/t9vQQXX8g
         bpTc1E3KD0SKZxjWTIOQfFLj2DYsLA+xenK+1uJ80p1QGmUFs2sZcJ7eiHw1WiVviAb+
         YnKD4y174WRr1qfqsoi5M1Wk9SgCaA4p7sTXghSiml/GyIlhh5D/slzub/BW7lovSerf
         d9gw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWIAZykwCEBBmQh+MK5mU2wfsUOvnt7fOKRAC37bo4DUV+YWd5vQAn4IGboHajKTfOJaI+VKA==@lfdr.de
X-Gm-Message-State: AOJu0Yx/blFi55PlFRORgJnZ+4MrZMqrfbFZinzYMIHjIwXa5ozoCAbw
	OhY2mklHjqxMjArC+pZPF6NwQASg3FENWRCPNuKaHG8iCGslC1CI0ipmDb6VZGE=
X-Google-Smtp-Source: AGHT+IHk17NfICENfAYRnKmPTv3Njz+GNUXGngPvA0cZ+SSJw/A6+pNpSr8me0xBtIZpvXlQpQFoZw==
X-Received: by 2002:a05:6870:3b17:b0:29e:48d6:2e62 with SMTP id 586e51a60fabf-2c691045246mr795570fac.9.1741931017370;
        Thu, 13 Mar 2025 22:43:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVHaAXr6RgsxkFkF96AqUxtmvPpIGWa9sZWPo65wXDNU6A==
Received: by 2002:a05:6870:9108:b0:2c2:2e10:95dd with SMTP id
 586e51a60fabf-2c6674b8c2els738772fac.0.-pod-prod-09-us; Thu, 13 Mar 2025
 22:43:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW3aZW/mBg1APYxaKt9AIe5z1ar5uc4/1OiQUIqZrfkNr0c59uNLG1APouqpd12Tn61lDMzXCfIPPCR2Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:f8b:b0:727:28a:1ca5 with SMTP id 46e09a7af769-72bbc2710f0mr617945a34.16.1741931016281;
        Thu, 13 Mar 2025 22:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741931016; cv=none;
        d=google.com; s=arc-20240605;
        b=EpPP1x7s5pjC0uQcDR6ypyCS/un8BK4eabuHY2T2n/TlsEeLpdAlgfDIE1Cf0YsfLT
         bMfy+rvZzyFV2wvadsLbWCKy3bDhkvAULthMGpQprkAUxfrfpSfM9YRx/xgKLKVhB9vU
         08IV4uFsPiyeYG6ei850l3UKH8Y+1QpvcsYLAYO01GIGTF5NOqlp3+ySBeQZkaP6Dnmi
         36gmUUpvTRCRkKw5tqESOWvkDlT20hy8Qp0Qb3b9jSEAycsrGk1WCpf8ChrTDY6bmt/U
         27CxLxOJ/l/hMvWScRdUraVwQAFEOh/GOzQpToQij2Vgd3TB8gS1WVCkrL063QR7Oq9J
         j7pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1oGHpNZzB0s0BRYa4oYsDbMxvS+lMLVkaFYhdsCiwxE=;
        fh=cVHK4dZwCSN2Wbw48PPxeCWMfGEU5z84KDOK/TKrTGQ=;
        b=hiMDjOoaQSn+lYEJ+PjP+Ob17ZX0S9u/Zr7o6en2fGDYJLBO0XqtI16KrRvt2ZltWo
         Y0LqE/EiZeq9ouQuWC+NRdTNgZlGjTYzVjSCpqp3qxzx4TyVKJVqpvhFLhDA+WcGSpH8
         mvjvjAe3AJ7o+iSm0Vl++U15YK7vbDMARKMUuaCnvlaOx6wdsKXGKTsBTztGO94YMzIC
         5IFO/CYXE4uK9zigb5chAbK3KcXHkUSFuaqwmF+6Ey9Ch3O7Z/5lgE93N4LGncXjPUH1
         kIWKGQp2AAvvgJSWb86tjANVNcoDMfofo84Qu0xLCkcOycRDXrJKAct2p8SaNKMr28zT
         3Q1w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=fbqzcAyL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 586e51a60fabf-2c671273ce8si1801948fac.162.2025.03.13.22.43.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 22:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0961C5C2635;
	Fri, 14 Mar 2025 05:41:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2C70C4CEE3;
	Fri, 14 Mar 2025 05:43:34 +0000 (UTC)
Date: Fri, 14 Mar 2025 06:43:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: daixin_tkzc <daixin_tkzc@163.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	matthew dharm <mdharm-usb@one-eyed-alien.net>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: Re:[PATCH] usb: storage: Fix `us->iobuf` size for
 BOT transmission to prevent memory overflow
Message-ID: <2025031403-posing-drew-d297@gregkh>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
 <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
 <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=fbqzcAyL;       spf=pass
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

On Fri, Mar 14, 2025 at 10:28:41AM +0800, daixin_tkzc wrote:
> I'm sorry for not making my point clear. 

<snip>

Sorry, please do not send html email to the mailing lists.  It causes
your emails to be rejected.

Also please do not top-post.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025031403-posing-drew-d297%40gregkh.
