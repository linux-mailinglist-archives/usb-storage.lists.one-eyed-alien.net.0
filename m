Return-Path: <usb-storage+bncBCUJ7YGL3QFBBOVDXWNQMGQENCCOZMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 138996267DC
	for <lists+usb-storage@lfdr.de>; Sat, 12 Nov 2022 08:56:44 +0100 (CET)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-13b7af40a31sf3215037fac.1
        for <lists+usb-storage@lfdr.de>; Fri, 11 Nov 2022 23:56:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668239802; cv=pass;
        d=google.com; s=arc-20160816;
        b=vpvZT+zSZgpSdV7KSTGdzOQgyo3Osn1X7qW9+LzyckqyYsCOFg3u184o/yIKuB4SJr
         yWpzdZc2ivmXu1k0A8lpkNxVw3pu7m1SiggtRX6ppHguiv+5gb7Tio6O8DsMH1XX4qeO
         WM5uoQOwqhKAtH1D7Tl0DVSzyCtiupd75fOXvWTI/EneIFZdO9D8K2c5O0C3vbFK1n/T
         /o8KTyASOooXfTqVpdu425hzs8LSh8VLHQpgi1QoCB8+qlERG2JDWq8g6vZk2LyBM6u2
         BNDChJqnMZbDel1n2/C9KHzihZFEHKMxp06HRtMvo0WqEGUlT9dXonwfuuqNWREL4jcO
         LPEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=BwCGGQqOsQvbGS11bd2m/g69uppijK0h+S4KwvDDPNI=;
        b=DDlxO16dbmqCorTbe/NwJ1MqhN+grigd0YwQWsnzpdvJ9ABbvynGFzzizjn1OP026v
         bl/MEN0em09BqJDq6PW7THl6QTIiluWH7K3mHDT3ZPgV09oxNVKrefE7Jv55AOmQvtE6
         HVO1EzSMoL6NNVNda5zl+jGBhVCYCj93xqoLg27QwwadKf1OPcFRh7fKH4zCUQ/1EHab
         /DVAbcmy5LIDUkMGeP0nyzaJuwxkrHdGZAjxBQO/A4oKJuTIkFZULbSqolCtaS/OMAu1
         YMKvbo4LokkUb/YKpbCry/ddx5doW7lBgYTLKGEH8r3l8AzYtQBp6NO/ORzkLzsDGrHY
         btsg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=whKi7kxD;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=BwCGGQqOsQvbGS11bd2m/g69uppijK0h+S4KwvDDPNI=;
        b=Lp3X/Ym5nkdzZYRzRQRHCFoHLoQfkhxrEfhHGvHis5ZCCBG/uNDyuN1V4/8CCDIWDc
         c/w8l+gfs8uKg/O1O3bm7wf7KSexhnJKZ0HGy6vd8QDgiEpZ6SY/81YUePKlNRX1u45N
         nhcO8YCCLDbytyOpQLx0SvgNlxjiW3JcN+/U4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=BwCGGQqOsQvbGS11bd2m/g69uppijK0h+S4KwvDDPNI=;
        b=dBJaZ3WCnpU1P0UiZbRPJsnCIfrAJevXaIOgExvmiMRasGcqTmzGooLLFd6rTfm7aw
         /VI7pfkoMMDbeQSq53ahM0GHQXydo70woKT8DtulQ/GiDiyAZl9fqz7FCaJTGUpGT358
         wlGEEqUwzOGT0W29dSnLtJ1QqlCavKmFxBMwTG6NaJjGQC6mwepOOYC6bJrgtPumw2nF
         bmqa7QR1u8BPb20F9tNQt+SCOOHTf4N+UZ6CZCTK2qhcod7OwmKAKrMlysSVF3nLcOA1
         3UGnynH2xxfv5Q7SumWU8O/R6ywzMC6q/N/5XxrGMM4841GTJ7nDzK0I2QS2CQdw3z5F
         xhgw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ANoB5pn+qNG1rywH74iKiolXwj2pxDT2Jr6gNOhxjp7KtwM4jp00VN4M
	4V96DQvFy4OIPdEHyRRr/0A9Qg==
X-Google-Smtp-Source: AA0mqf6C8pkjXPCWH6kY1RHYMqmmt/H1FgQWHUMDFGMz3moPqSbQme8QN3HwKgcFcqJKmgxZvJvO0Q==
X-Received: by 2002:a05:6870:598:b0:13b:a02f:659e with SMTP id m24-20020a056870059800b0013ba02f659emr2751757oap.43.1668239802438;
        Fri, 11 Nov 2022 23:56:42 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:d18:b0:661:b84b:eb5e with SMTP id
 bu24-20020a0568300d1800b00661b84beb5els1270275otb.3.-pod-prod-gmail; Fri, 11
 Nov 2022 23:56:42 -0800 (PST)
X-Received: by 2002:a05:6830:2087:b0:659:73c9:8497 with SMTP id y7-20020a056830208700b0065973c98497mr2763653otq.341.1668239801936;
        Fri, 11 Nov 2022 23:56:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668239801; cv=none;
        d=google.com; s=arc-20160816;
        b=AQ2b4uoy3l8E/RIe00uNstN2IeZwtVjG9Rd8FEdzppDv5/nEPt3JsYMaqyXIcJO73c
         ZOJbBEdNUTePclw0pdwk4Jl6jDtd44COKhm/sOPIfWUC4QanSbIW5BHYcRg1JUpo4hig
         RAChqUaFDUi3fdhFAVBeNoHMUse+qzljm+fdwXpdroDkOw0bawV4Tai2TfzGnEYf063i
         sndW0c6Uqb6Rpa568l1OIkCEdja/7xMl+Vg3kG7J/4y+u+Xwf1a+hbEoqztw7vBLCZWt
         KN/WGCa9KOPkkMy7m+4VUq8YkKyqpcoxbyHt6d1tOjj03YExmYS9oRpA8LrSN+eJpFTG
         jl7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Ux9xAeStHNV6PF6h1s8hApRSn76/uNRmwc0F+xDOV3U=;
        b=deHVvxiVh94UFBjjmOfmaf0zDUsLzgr/9Jn7jkcrhnimofB5lYoPP+FHepeAPpDAB3
         lrLnpURe2UQrs2VNZ4IiEeJ8U3nNE7caw0Ojr+1CUA+bRuXoXFPEBmRMg7U0BeU0DBOQ
         MAcXHbWBWc100N76pZnuaC6is/ERatAFddFU50CvBWB6RzCs/Mda2q6DCXtuXa39EbtK
         SjsLX/Vf76FMrkwpzP8ThqqxowR1dPXAvSvBRHkUPTwhuVd4ue6wKynkBZPHwiHRKYcS
         9UOWxQ/8XMwrfShRTNisxzsZY8k/B2E9oQt4kuMzpn0iW0048e+rYS4sIviZ1wD3HBM5
         nJHQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=whKi7kxD;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id c24-20020a056870479800b0011e3e01f374si3413847oaq.1.2022.11.11.23.56.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 99FD56091B;
	Sat, 12 Nov 2022 07:56:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98EADC433C1;
	Sat, 12 Nov 2022 07:56:40 +0000 (UTC)
Date: Sat, 12 Nov 2022 08:56:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "zhongling0719@126.com" <zhongling0719@126.com>
Cc: Juhyung Park <qkrwngud825@gmail.com>,
	"stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW
 to IGNORE_UAS
Message-ID: <Y29RtXGcey6V9iTY@kroah.com>
References: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
 <fa0556e5-e154-a4e6-6b18-4996a01d2f10@gmail.com>
 <Y2uDnUQKCDGzioJN@kroah.com>
 <2022111215445443712314@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2022111215445443712314@126.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=whKi7kxD;       spf=pass
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

On Sat, Nov 12, 2022 at 03:45:36PM +0800, zhongling0719@126.com wrote:
> Hi:
> =C2=A0 This error not happend on all RTL9210,The uas blacklist only for o=
n sale device(0x0bda, 0x9210).=C2=A0

What about using the version of the device as the only one to blacklist?
Any more specific information you have about that device?

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/Y29RtXGcey6V9iTY%40kroah.com.
