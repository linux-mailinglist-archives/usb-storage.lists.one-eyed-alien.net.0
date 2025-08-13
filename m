Return-Path: <usb-storage+bncBD64ZMV5YYBRBUUI6PCAMGQEGF3JQDY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id E87E3B2505C
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 18:58:59 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-7e870614b86sf1427885a.2
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 09:58:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755104338; cv=pass;
        d=google.com; s=arc-20240605;
        b=YEJsNXNqT3mWDwHTjPifbQV/lrjTM93DlbbZUiAVVENocwlwjLHHnFK+T26qHGqeQb
         CeD2xwlXtrOEVOpuJH85/v69cNY6MGkCjMt41QzuJUKaqfKLz1BV6ZdN14pPZucJQFIl
         IyjD3oKIeTlFZgKbtREEo81qmVmyOgbTjg9ck3ET2d6jE8u5G0HBBHnK/zpAqqJ72nc7
         srIEnSPaPWnrwMd6DsF8evJCorq1kbdj8Jls0Y2wk/yVoPNEkPcY52+KYW6QsNRdReI6
         havuRiH/wgmmVl957A1okFU57W4+4DdmpE6/IlvEg3uQ6+026Os/SyQkdS7t/YdXV7Cj
         pHLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2dZ/W3NAC9i3VM710aOG1XQ4/prNJ1fzyCjMSRbCzjs=;
        fh=aiLJ1aieFVcR5XyEeCPYyXX6DGPhLEMh8wN3QsnbjwA=;
        b=A+FZ3Pwb/x6bVxU2X1mAKieb1YE/QasG3byRBsTNVJGRk1ZBwZELFr5raRyBSdRDQS
         uQ9lUmtKV+6+GpEmwcu7DX/O4CerMPyoPq5JGxpcjNouIVs3raMzeCRecFLEG9QUDy49
         uzFmz/NBviawWnRThf5Yfo9xIfcTvK8JbC23Im4uUiIAUnomD6ZCanEZgJOsuwEzSmkq
         bDCIh+kPgXZ0LC+pceRTe0uDFtOHdgM2tVeRvrVzz2TlRGbD7QOXkg7LrGJ+XL4nLEBZ
         xWTgI5ubsxe/M3rGsAMLv9iFaPS3XnycAo67PfCt6uXFL2Jix962W50xInWk1pOo/+rn
         NIeg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="Ys/m+jME";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755104338; x=1755709138; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2dZ/W3NAC9i3VM710aOG1XQ4/prNJ1fzyCjMSRbCzjs=;
        b=SHAbtHGDGIRpwABwo7Va/3/LlCNeJTV93VDemy1gkb1E52IEyV9pOr4TB3pfytTcp1
         cbUc+d3MKMRooujy7VO3usO4TbsR94nCJVaqHJghoTRTvgEVfRviDh/hFwztutBkd9b4
         0SsDIA/94AfS/pVUOUNYCaOfxyOvvwcl/8Wis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755104338; x=1755709138;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2dZ/W3NAC9i3VM710aOG1XQ4/prNJ1fzyCjMSRbCzjs=;
        b=ult6JkYXDBAcZUpxlw3sEkKCb61l5qEF5G13tEvMCZmuvW3J9cGagX7b4SZmTSRFxK
         Vl1xjfkQCJC8Y7djG+G44CDe6VYvecUz3wA0E7KVZDzltBB/8gd6ao23hgdTB46HspAT
         REIBPOQzeQ9hGjwRx2Vv5+JMqrAaVb+1YNQUyZFvwwDs0XqnQwM0QjoZ/SXgDfEcM6Hd
         epwHHDJu+u1Mm5AlYD+vepVQQ5B5I0cveYqAJ6EguKqGIavve5ApqPd7RxAEJz8uGsFo
         RY+eivgossaLTY3QFU4MZTz5xw5o63beKGVqJQb3FwfuR2z04QS6T9uJYHGcpkos+8MB
         66iA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXfDpTerPhOJotr5cw1W8dOIGQq8nKcLxn193GI33KzQARCfr33zxDrpkIVRgbuXRevsWUjqQ==@lfdr.de
X-Gm-Message-State: AOJu0YyB2UNUa4ieiHEcefe8h7aaSo6X7EJwwpgHaXzRRugzlT3CmYnl
	M9Erbx5lS778VTBCBOy0+SC0NOpZ3iatPaB9pn0nZ34fJ6raSRh3QOdGu7vBv40a9DI=
X-Google-Smtp-Source: AGHT+IHO9zfI4AHuNO6ApMlmXScSas9AKrHYVYdTCstPD7oHNKkRqdp5twNI3B0N1mLOrllr3KO7Ww==
X-Received: by 2002:a05:620a:468f:b0:7e6:31f3:eabc with SMTP id af79cd13be357-7e87043ed2emr7206285a.5.1755104338529;
        Wed, 13 Aug 2025 09:58:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZc50iOy2IDz4E379j8wGhOyjMGxMxfkm/q40uCUhMdsdA==
Received: by 2002:a05:622a:49:b0:4b0:9c1e:fc94 with SMTP id
 d75a77b69052e-4b1099f0b5als2423171cf.0.-pod-prod-04-us; Wed, 13 Aug 2025
 09:58:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUVmfga/nQKjPGMAl2/NCIYzQ7AC/XXkO447oMAsfFbiaherBr3fRETEweAjvB0AoWXbMDH8RPvOZkr+Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:4ac9:b0:4b0:77a3:2b12 with SMTP id d75a77b69052e-4b0fc87e629mr53588551cf.28.1755104337534;
        Wed, 13 Aug 2025 09:58:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755104337; cv=none;
        d=google.com; s=arc-20240605;
        b=OR8SDt6JnCfIdCjLj5w6a85K9NBy/g2QFmzoOXt3M/pAau1ICbGvK00zbv31TXELp1
         0XEqUpRPtAgNuspBaOPpG6Hdu79CNnMG4IIpW2B6f9r0NudnLKhHdUuacc4NnzewYePg
         vYCkraUKSWgcLlAIzhJkvp8MDGn45FJfBn4PuaiEFku887KPS1s3GebYnYvt2exsFwve
         ceKcYLGwmZLBkhvYkFBd/629DTGVPiZDkCjdO112zFxglKbtweKAOJDdZIbvHV8sEwnF
         NGtfjSIaJ5kJASaQu77E0yINsvEcm43Xhgrwl/GdgoG2gH1BFeJqqM94AFnJ/ZO+4MCR
         pMhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ixsrcuhdRVNDNuQRG1GynUI+Z0v3MMN1ZtGtSSllJ7g=;
        fh=1tBUkxDjufEJgSNPI0zJSLA/RBoXMm7lnbBNHJ2Q2SA=;
        b=T6jDNuIu3KvNaAFeyKDMyBFkiPpoZjmGY22y6TARBH4uaidPlazw9RpSEZJ8GfjJ7Z
         eOGWRGiUmjQJOr3gCTQB4ni8tc+LNuh8z9bbfWsBzeVGNFhok17QIiELkSH0Rp4dF+xW
         N9nMHms9JBwRORebQqptaHOGvb1GnJpY6IsWV1hfHGJi4RzpA8DhRdr2y28AG3lFxHnW
         MyiKmBjyfHMt20oegHzxilbo5BZn8pLG7yANBdRmhlHH/JCG9UIWYml96l7R+zXMCeau
         xSRuivdN/IxYTac9ay2pzFHchYiYq1IIPc42m/9MO6V82PYoVrC64FxqW0A3ELEw0G/V
         sL3Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="Ys/m+jME";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-4b0df35f348sor72308601cf.5.2025.08.13.09.58.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 09:58:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUgx+xJydVhbdXOoeDtd2eX6Q9DS5jNi77kdpe5aZtF2gy1PofYsOe3eqYU0IAPCIWv/sEFQufSZ1uZ1w==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvP8uJBhGqJb50ILrwWfP9dqTsT5goMIgGgKF3cUD7ihLLT0+FJ+nYAxmXPXg7
	CVvLEqDFQe+XQouWs6D3iyAmqQXRCFuk3mWcnQynIQdWHjznmFoOpu3bvDmS+9g3utrApBxSMFZ
	MyV/ZTGBaNcovMiJ9TmBJWq9Nw/S1G9mWWmibuG1ykNAN71n4+oDPZHQQ0j7MVvrYAeqjwnovqN
	nvUBi4k5A/L3RqzFQUjShm5Q/wE81Xv4MBdPZZlzqbV3haXp5XAmE0sQXxVEO76HKXhkaS+ESKN
	UnOWHb5a1p8BQ4C52lQSqB62Y8OwHCK3eE8QDVKEbEW02Ia4BMKNFo5NJEIz0mlmAKDvfGlRDSP
	/cmnUSpedZgMXTgL5a7b/xWCO0wwXjKTRa7RL3j+ncYOYjzcTHEG5ZWOfjtyiKQe4cA==
X-Received: by 2002:ac8:590e:0:b0:4b0:89c2:68d9 with SMTP id d75a77b69052e-4b105f7a7b0mr16894621cf.36.1755104337064;
        Wed, 13 Aug 2025 09:58:57 -0700 (PDT)
Received: from rowland.harvard.edu ([2607:fb60:1011:2006:349c:f507:d5eb:5d9e])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b069ca56d6sm142258981cf.36.2025.08.13.09.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 09:58:56 -0700 (PDT)
Date: Wed, 13 Aug 2025 12:58:54 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Zenm Chen <zenmchen@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	pkshih@realtek.com, rtl8821cerfe2@gmail.com, usbwifi2024@gmail.com,
	stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Message-ID: <ff043574-e479-4a56-86a4-feaa35877d1a@rowland.harvard.edu>
References: <20250813162415.2630-1-zenmchen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250813162415.2630-1-zenmchen@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b="Ys/m+jME";
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

On Thu, Aug 14, 2025 at 12:24:15AM +0800, Zenm Chen wrote:
> Many Realtek USB Wi-Fi dongles released in recent years have two modes: 
> one is driver CD mode which has Windows driver onboard, another one is
> Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode devices.
> Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.

There are several other entries like this already in the unusual_devs.h 
file.  But I wonder if we really still need them.  Shouldn't the 
usb_modeswitch program be smart enough by now to know how to handle 
these things?

In theory, someone might want to access the Windows driver on the 
emulated CD.  With this quirk, they wouldn't be able to.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ff043574-e479-4a56-86a4-feaa35877d1a%40rowland.harvard.edu.
