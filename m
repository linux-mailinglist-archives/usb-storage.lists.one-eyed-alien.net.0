Return-Path: <usb-storage+bncBCUJ7YGL3QFBBQFPUS2AMGQEUFKP2IY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id D86EB929267
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 12:09:05 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5c227538e7bsf1691770eaf.1
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 03:09:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720260544; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXZtu/+/c2/Iybgb+yetLJZmMmiiMiBtrcyAQIPQNPQBXkV4JwwTM/ggqgkvdpS8Wn
         IZoI4zhgj8Fmi2wTT+m0/LwtvVCDfX1LcEotFbMVnAWpNdndYc91IGFH3Lexdyxq3BkN
         WEsOziuicT+pLb1QJvpJSnWOHpTQmBQ56JYHCABZK4BbDKgn2s/9uRj0DtlLwsQk1ozv
         8Z2Pyte6DX7asv99kwOXGrcb5bVEpGJ5Z15TtYgr+oHPV56eG8Qq6Lfo4ZyYHedG+WkY
         5YzYsyN+V5jLrsi50DLMZSJlRLkbsubadT/FREV1jAWVuIysHXBaw3ZCZ2RKV3bSWZGt
         TSYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=P2cSqtw4LZx7piaEDMDNcuqXkWxObtWwGwGdwBMtooA=;
        fh=AngZwXzc0jXTKuMGbMDUg11FXq4zB8gci0R2vhjHY5Y=;
        b=hX62VA1T64nfzx7iJYcf5aANYf3gww3C4/3wpYIIXZIJTeVQSzIQgA3ttyeEHo0ObQ
         ULEYCdXLHyu4k1xm0wvAD+BxCaFlRMT/XPwy+Kq/vzUywLS/tk/TKifbbBOHtI+vdfeX
         eT170l3ZkGpaiYJ9mhRXBewf5DgOoW88amVUum+WEGxX0Og/Z/t7PVUtOdFvJC+uxBxX
         NNWLHJPG5x5Hyvm8KsRkV23h0R0Yg4odmUTHRCBJbhPyM5wfVdH52CHvTmP8CiD8I2Nv
         7x9pCSr+HacbHxdea3RGm2Vo6xVnMEbtNp45ERxCt5NtTsqUCJut9yQEIBVJrk11SdFb
         55Ig==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=IV8ofKEk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720260544; x=1720865344; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P2cSqtw4LZx7piaEDMDNcuqXkWxObtWwGwGdwBMtooA=;
        b=R7CZZkZER6N1TE8Vyvjty3AIyF1myoJqq3oNxmxVTCGd9M3CY/hFgOtREldNoptmyt
         RWKzkN6pZLZM0Bt4vyyMnEpzb+moeluFqmhu0WTpsE6yj355XflMTVjXdaA2/fFznf4N
         p1izLlqQI352JFlHJsgf9DmK07E+kFFiZY8oY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720260544; x=1720865344;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P2cSqtw4LZx7piaEDMDNcuqXkWxObtWwGwGdwBMtooA=;
        b=jHC6js5tWXPie6efeBvdfEJgVyPzw9fWuEkPGZ7lkLATvz0AqQOSAgb0TP/eZMQXpo
         ZvsQM06fZh8vpVdzASN0KyrhxiWvFNtafRt/Mg2lLt9t7kQtw6nO/r0mnDfK/76zoz8t
         Fz36PnX2R/AA44IOrmkLDHJsyZNRkFKIxCseOwDvTTzVpdwA1hStEuU5QPSsB0Iwygrb
         24/wHUDVwk63dSDCcFwUyWd6fr1dT0RzRHAVeaBsghauTmcVO1CI+AcAZCqw0MoxSBJM
         A2X/YzV1+HY6VIV4qn/S3rZhp1d0BaJiNj7BYCM4+16c4nOwXMFAxlOPuYaiwC756di2
         544A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXYmTpaH/ZLLBERbR3yVHBVupqEL3OXgz1KlysAYUwAYXsbUoR9C2QSyHPrb96CdVrSTUGw1GEavgm0VMGSWM9PL2Fg7Zl4nCCF
X-Gm-Message-State: AOJu0YygcYk5FiUeEdLccezP/eECdYd34mYgD84BJz5iGtKU7MTxJe2u
	YlV0jIj+iohZTeTeRv+6/2CqUBPod0/OJYQL/QlEVISPc/o65sxLMnMuCNiKlH0=
X-Google-Smtp-Source: AGHT+IGODd5mBcHqZJ5YSxmWk3T8DFTSqJ1H5oBLdfHoMqhFMaxtrwy5dqoRDcwCGx+WVv8jirdANg==
X-Received: by 2002:a4a:55c1:0:b0:5c6:641c:c3b3 with SMTP id 006d021491bc7-5c6641ccceamr2084040eaf.7.1720260544250;
        Sat, 06 Jul 2024 03:09:04 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5102:0:b0:5b2:73ec:2f15 with SMTP id 006d021491bc7-5c6438a44ccls2192198eaf.0.-pod-prod-09-us;
 Sat, 06 Jul 2024 03:09:02 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXMUSO0Cq3NPwM5cdd6jWo6Bnz0g0w4MzXV0KsFh7muZqAXbv/D9lBcpq1/f/tTDvaoXp4/jxk/eYBipDZ5d6DkgkJIrnapwBEfbMHTMpwJVScYGJM=
X-Received: by 2002:a05:6830:1144:b0:700:d1cd:dd51 with SMTP id 46e09a7af769-7034a80a80amr7624845a34.31.1720260542150;
        Sat, 06 Jul 2024 03:09:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720260542; cv=none;
        d=google.com; s=arc-20160816;
        b=TN45ZvzhMylLz2MyHOy3CeMsPnRFPzq/9kzr5cREEw/DBiD3eqZbB4f4oG573GNfhs
         EQt98/+9PT8aURVS9ayaxpbrvg39sHxp1FeHMynqbAeQZrFoSP5r6dqqZi3NF3eT/J/P
         5gCet8DoIPv+bbDRhWlVhhJOsByTxSJPz3XRUyAm8Grtg2x5luS+5UEJfuk1FjbpzHAU
         rIBLKelbOBAvOF6xk+apC5F5SNNhxkIkbSoUzu4S7YYmv14RI70XqheFTJA3T0LibnsZ
         sWKEX07XbIPweKPhqa/el+iyzZjHED0Mqfr5z+Tph98dEnyMqvVpogKJVTjzfva8JgF8
         Cz8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=R4NNwJLeV9KH2Qgt46Gc2xqz2MLGAgofL7X++i1MvDU=;
        fh=G1xaMEjcq/VzXNko1kzCDqvxW8eozN2W81dz7VgrA2Y=;
        b=WmcaT/OVQLzo37lTRa8HbCCnYv5+6m77aZmGeaLg97qj1/kMc71oI4YcJh6k9A99IR
         JdLxFKvexBSlTiFObA1+HVmGmKnhbOivojW6Txk8jZummDpSI7iBoHUSO23YQpIRw+j2
         vcYHTCkO6nrj6yCeRxViG3idE01wDCC+gi20nX4kcIJR/ePObeOL96sY2osQRqsAQIOu
         4oBKGqzAWOMjYd09IUOKBK6R5LaeahQDZ3i5QaBurkOI/o6pNgH2+iLE2SLUdjuT0s7d
         vqbO/sG/mLOSO8m+lMIwB7H+EPOvqJmebVgCPRfiTleUKz0Xcmy2/+X3AzxAd1Ab1Hcp
         bvLA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=IV8ofKEk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 46e09a7af769-7021702f4bcsi4908941a34.4.2024.07.06.03.09.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jul 2024 03:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B764F61BF2;
	Sat,  6 Jul 2024 10:09:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B435C2BD10;
	Sat,  6 Jul 2024 10:09:00 +0000 (UTC)
Date: Sat, 6 Jul 2024 12:08:58 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Aditya Garg <gargaditya08@live.com>
Cc: "oneukum@suse.com" <oneukum@suse.com>,
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	Kerem Karabay <kekrby@gmail.com>,
	Orlando Chamberlain <orlandoch.dev@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v2 2/2] scsi: usb: uas: Implement the new
 shutdown callback
Message-ID: <2024070636-finalize-chop-f98a@gregkh>
References: <A6C4519F-852E-4B5C-B791-7396B515B8A6@live.com>
 <A53C580E-C0CC-42AA-B50B-F1B8A5756C9F@live.com>
 <BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3@live.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BAC247FF-CDA3-4C34-A9CC-A429E3AD13C3@live.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=IV8ofKEk;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Sat, Jul 06, 2024 at 10:01:38AM +0000, Aditya Garg wrote:
> From: Kerem Karabay <kekrby@gmail.com>
> 
> This patch implements the new shutdown callback method added to
> usb_driver on the UAS driver.
> 
> Signed-off-by: Kerem Karabay <kekrby@gmail.com>
> Signed-off-by: Aditya Garg <gargaditya08@live.com>
> ---
>  drivers/usb/storage/uas.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Why the "scsi:" on the subject line?  This is not that directory :(

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024070636-finalize-chop-f98a%40gregkh.
