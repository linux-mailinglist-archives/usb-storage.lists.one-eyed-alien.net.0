Return-Path: <usb-storage+bncBDBMLTW6VQDRBQP6SGCAMGQEKNZL45Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DE036A2F8
	for <lists+usb-storage@lfdr.de>; Sat, 24 Apr 2021 22:27:47 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id p17-20020a05620a1131b02902e45c6e4d33sf1199316qkk.0
        for <lists+usb-storage@lfdr.de>; Sat, 24 Apr 2021 13:27:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619296066; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ju2M8p4rlVic+sSiFMs3ZxfEG58JHnjS6ZxgIlkyLNKm5CnjYUa6fbqfTFBHSUwTCW
         zIg8c2iP95jSq7zTHEirYxcQGQ5OmjPFZEbESmb+Rsylvsm9+UulTJBNjGLPXUfWQ741
         cToOIRPL7Ai7dP2meoQnq0rzEFMLtmqDpssg7fmEuL8mEh23nP7F10Uc29SJnetPJWia
         OVIogrbXUs8SzOckDoRJX3lGQjkNBv1SLYJomjf2Un6e+H4QY8ebUe/bDsctr9R28lpG
         DOvhfFtMeUMtQiIV+RNvmsXWEuU2hqO5tPn/o6j505n5Jz1WgBjtRPpqV6YgTrlA0qdz
         MJKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:from:subject:cc:to:message-id:date:sender
         :dkim-signature;
        bh=RNAduPsH6Aq71WOCUC7VulmmgWj6SDBfA3/mxvU5URc=;
        b=iTWelKvh1/bSS0E/+LWPM3ujrDAx92Eqm2TIPs6IbCXZ1nfVR5UbbuzgoFP3hYK9MU
         T7GNmW8cgm/ub3fvfjdCmjPWyrveZS6ModK1kCd5Ld0ZxkC4rFx1s/OzSruiJfivpK6A
         vxwEAHIr0oWK7ihVTaEgAJ6s5L0ZQiXH9TLaxgvWECjMgAkXstc4+hSL5Ec5g6ynlGzH
         lbH9djYFN5Ymbq+mTd/y51ayGcrVohgnvWnj95+N852+pRGY5jznL768eE5c9F4DhPfI
         MPFnupVCKMtNpJG6UE5JaHDDYEIqccoA/kALqm8TzATLJyjGtqj1EcG4vvKWgCvrS91f
         /d0Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=NO4ys8zW;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:message-id:to:cc:subject:from:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RNAduPsH6Aq71WOCUC7VulmmgWj6SDBfA3/mxvU5URc=;
        b=L58H3VEvjINZxirE1X/jYhmWSTCqTZ+4ln2rd9FkOhZTa2jxYHLeztnEp55fgm8w+m
         /7xlJ1zIhCEy7wMfSEbAEYp0bnu2/yqusJw2dPWO5YwI0OJeYzmoN+gng0NojnPYOw16
         X+k0+BiYO2wnDT0Sq6Pz9SsyIAh6/7GX2N1fI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RNAduPsH6Aq71WOCUC7VulmmgWj6SDBfA3/mxvU5URc=;
        b=bDYs4xxHAbB2mhGKytDTwF1rQuaVvThOHEEh0Ndst/iEOCWcRL3N7n3fyNapFIegC4
         kWgnJfALQHZas4fsKttTMX95yKABdQXlmzuMbiiFnS6bZ5QqSz8TsJg7pWwOFAmVbxsh
         RWSpfTi3kurhIDmdF7qI2CuK7C6y9im9o9QzI0heamkcpqVvsIs5uRiL0nZrv93v9d4Q
         JiKAVDqWZ2hh8ZAmX9F4CIpw+PlSwvDbSZlkJv8DBJF9EHvRYtR6LTAsN81AidOHGsIn
         D8DUukcjds//1mxxvVYSVSt3YPC5GxdEhXMYA44Hw3QJpnWU+7yDZ65xLp7uL/RvCi+W
         cYmw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533B61eiHULik7KZ2Sy9AdNghQlKwLhtHzsyjyn1ctVjSXuGBtpQ
	iZ+u9WfethprIk8SU5wELuDHKA==
X-Google-Smtp-Source: ABdhPJyjcJkpt1YK474dyK729dsrVPasoH3ZzRbpWb9Lw9A/w2zQLVyi3BHuDLJbOuwZ8uPjjU782w==
X-Received: by 2002:a0c:aa04:: with SMTP id d4mr10397621qvb.16.1619296066112;
        Sat, 24 Apr 2021 13:27:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5781:: with SMTP id v1ls5304273qta.3.gmail; Sat, 24 Apr
 2021 13:27:45 -0700 (PDT)
X-Received: by 2002:ac8:6b96:: with SMTP id z22mr9245849qts.265.1619296065503;
        Sat, 24 Apr 2021 13:27:45 -0700 (PDT)
Received: by 2002:a37:278b:0:b029:2e0:5f9d:234e with SMTP id af79cd13be357-2e42d3a8707ms85a;
        Sat, 24 Apr 2021 13:03:54 -0700 (PDT)
X-Received: by 2002:a05:6000:18af:: with SMTP id b15mr12815817wri.71.1619294633206;
        Sat, 24 Apr 2021 13:03:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619294633; cv=none;
        d=google.com; s=arc-20160816;
        b=d/fPNjvhttr8/NoucvcMBoMbn+XvAFM5D7mbGNtMl7QtXMjbWYJbzshf6QU9jzYYOX
         wAA9sbGiTZ1SmuX0Yfh5omDXNKqJ4M4AyqxizRt5Usn0Ypo8yKZP+tOl7l3zmpM8vUUz
         a6M6sVmQWzxfpEUMiVYxGFcwb9tAxZ/722N/V7jINFQtWy2uk7YA/KGX/bN/CmhNEEyA
         P4SeRg77187NU1RcU3urroR1WrjOqHfC9UXEwiSsVFH3zYyPN/t39UXQMLi7K0swAdzG
         +xA+1vy0zheTt6rTYqUQp1a7Y0xZTJzI+GgtcOXN+3nltBU1x2zOpZGANUbpcQODDIvC
         mTGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:from:subject:cc:to
         :message-id:date:dkim-signature;
        bh=RNAduPsH6Aq71WOCUC7VulmmgWj6SDBfA3/mxvU5URc=;
        b=WFLNYZQiyOjc1lIafVbTB6FKuZPFY1SB3G3nCNJ4H1Oyx6dzNbwcKo1GgTYdfDQg4Q
         t2mCH4h38M0k0pWG/2NLO06x79gIO0TI2TtFAlUe5lHcYco2FucJNTZCrXMpyOWAxoeF
         talXz//Jp+hYrV1LktLZb/+SHinwmCIVoDl+i6GN/Gk2JpV9X1TC1f4GETODPChKmcb0
         lV9C2c9UXdMQLCcAPItc8ogXzUJNR2rZ5x6dR7xaeIJA/D1v3zYNAysFubyTHJNgtLrS
         G7BBqBHG+B/muAJzPfNvGjB1JiriOukZK47IHh71C/U9NFNVv59iHxMGME5iytC/I9pR
         7IGw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=NO4ys8zW;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id 3si11035079wrb.289.2021.04.24.13.03.53
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Apr 2021 13:03:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1laOVU-0008CW-8u; Sat, 24 Apr 2021 20:04:00 +0000
Received: from [192.168.2.131] (helo=localhost)
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1laORl-000438-Pp; Sat, 24 Apr 2021 20:00:10 +0000
Date: Sat, 24 Apr 2021 22:03:16 +0200 (CEST)
Message-Id: <20210424.220316.855336714119430355.rene@exactcode.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH] unbreak all modern Seagate ATA pass-through for SMART
From: Rene Rebe <rene@exactcode.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -1.6 (-)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=NO4ys8zW;       spf=pass
 (google.com: domain of rene@exactcode.com designates 144.76.154.42 as
 permitted sender) smtp.mailfrom=rene@exactcode.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Hi there,

for some time I already wondered why my external USB Seagate Seven
drive does not report any SMART status. Only recently did I take a
look and it turns out ATA pass-through was explicitly disabed for all
Seagate drives with 7fee72 "uas: Always apply US_FL_NO_ATA_1X quirk to
Seagate devices" in 2017. Apparently some early ones where buggy, ...

However, fast forward a couple of years and this is no longer true,
this Segate Seven even is already from 2016, and apparently first
available in 2015. I suggest removing this rather drastic global
measure, and instead only add very old broken ones with individual
quirks, should any of them still be alive ;-)

Signed-off-by: Ren=E9 Rebe <rene@exactcode.com>

--- linux-5.11/drivers/usb/storage/uas-detect.h.backup	2021-03-05 11:36=
:00.517423726 +0100
+++ linux-5.11/drivers/usb/storage/uas-detect.h	2021-03-05 11:36:16.373=
424544 +0100
@@ -113,8 +113,4 @@
 	}
 =

-	/* All Seagate disk enclosures have broken ATA pass-through support *=
/
-	if (le16_to_cpu(udev->descriptor.idVendor) =3D=3D 0x0bc2)
-		flags |=3D US_FL_NO_ATA_1X;
-
 	usb_stor_adjust_quirks(udev, &flags);
 =


-- =

  Ren=E9 Rebe, ExactCODE GmbH, Lietzenburger Str. 42, DE-10789 Berlin
  https://exactcode.com | https://t2sde.org | https://rene.rebe.de
