Return-Path: <usb-storage+bncBCUJ7YGL3QFBBXNG7WLQMGQEYOLT74I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F12599853
	for <lists+usb-storage@lfdr.de>; Fri, 19 Aug 2022 11:09:51 +0200 (CEST)
Received: by mail-oi1-x246.google.com with SMTP id u10-20020a54438a000000b003451c5e52b2sf552899oiv.10
        for <lists+usb-storage@lfdr.de>; Fri, 19 Aug 2022 02:09:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660900190; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jlortq20dyxoXy424K1v5KFXk2LWShZmk3+hlmtK12IcuXZWGxutJU9pOhL8z+PkRV
         Sd8QjKwLoZ4bdLN+nXjdhwiWWhq/2ApkM5jlWdA3orNhJCdBVg9YbOMdd05tA9+tVUF0
         C93ztnz5oMp4QAlsAAfLj9FXn2S20k2w4oD3kjcDPkDkis0VwmODAp0gi2EvEBIjqPV4
         O932W7dIZ4IUdJILgZSwBdhBTAHa6TxaaNTyzfHyK7QKg9iq6QEvJdaAd8U0WaLkgpGu
         1bPGYcgwj8AEFppRrQM0Pkn1zBzFgEnbw3dLaJr2Pv6HiBeoqcVTI9TJZ7O6H32kSbbQ
         XE8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=spq3adxThCm9BMXZdZXzFgNwxsGu+oMzY3wTOUEe860=;
        b=bfZuk3TCqqjsFuJjzrnxSch0SgYIs7h8yVrrDAWj4DSjlUrYk0nUhLkyrbrRusrzDR
         qpQPiqWOmfVZIWE/mF+rZjwX0cJ/E5d0sR8Uvr/FCFROYColUV2Oa4KGKbdAKTYXsBoZ
         AmX576+fuSlO8Vj5J110FrTGjolQ196hFlKc9soU33KJ6lVgGbYqAT2W6LAmrD9+vfal
         DbzfINKtZ6LmhHJnQ0oBOEvNjDV4mItOAwHp2sWcxkvsU2ZYZ0ulj386eweVDCPa+XZP
         auPv6A0lbrM9cQXNX/eUGAsnNFMQYZLulklo4pSImYjF+XbrZ1YeKjjtwUIskqTGVHiE
         +/YA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OYb79BAk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc;
        bh=spq3adxThCm9BMXZdZXzFgNwxsGu+oMzY3wTOUEe860=;
        b=lzEjmgmX/mbtRCOqVjNjzLd2novyowg9GYNgrT0mJpCT+9qtqa/v4htt07FKxmDCsM
         aydUhQN0r+nYK0g/rvSIQQxaj3qQpuLnFJzfRUCz2IHwr7Uqk3T0oFvjMoVnFmsWJI0R
         me6nzC7/+aTWnaOQMe37Fh9gs+Xq07tWWrTj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc;
        bh=spq3adxThCm9BMXZdZXzFgNwxsGu+oMzY3wTOUEe860=;
        b=Z4DmtbkcDFqGz3jN9dgUxSdxP9ic6qAfSLZbbXD70oaBuBP+pXTvV2YRnyi1eIJlhb
         payUmkHgXEZYpDyz7h3iM9XdO8WC093OFbLzQOdlTaKptl67v3uG5BPczsF0Qk/Xnune
         KW+oVN1MZsM5WIPK+V+DY7nHp7AvRh7lnXnn9Y3jei4FhIzS31T61kUB1Yl3AKPQBsoE
         2qa09rNCex0X96P9zcrYKEHl4iL4EQ5cB8/+z3TZaTg5Fc4SudWxpfJkjBN6rm7JZfjc
         evQ7FYyYeVUCINbH1eAGp4ZMS9CACoMkIcgcqrOMc9k5ls3AKII1Z4TDyoIhQEIJ6+s+
         pnCA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1RkA1pdg04EtsvY0V20SUTvO9qofss1R8TB9ZFYKbqoaUZ8vph
	rxG2+sqJOrOTseuRQ7tPYuYZFw==
X-Google-Smtp-Source: AA6agR6a05X9GGsB2znODv7TSd7XXB3GIp9JheNyPHvTzbWbtAL4Cag1XyWgydRb4zbh6Vltn4MBaA==
X-Received: by 2002:a54:4413:0:b0:343:7a61:9975 with SMTP id k19-20020a544413000000b003437a619975mr5115365oiw.210.1660900189926;
        Fri, 19 Aug 2022 02:09:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:3a04:b0:10c:41e7:bfd9 with SMTP id
 du4-20020a0568703a0400b0010c41e7bfd9ls1328090oab.2.-pod-prod-gmail; Fri, 19
 Aug 2022 02:09:49 -0700 (PDT)
X-Received: by 2002:a05:6870:828a:b0:10e:84bd:1911 with SMTP id q10-20020a056870828a00b0010e84bd1911mr3354223oae.24.1660900189205;
        Fri, 19 Aug 2022 02:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660900189; cv=none;
        d=google.com; s=arc-20160816;
        b=dA64VC32pir65xgm275ZgVvDnS1dweV8zzV76+S7pPcs7llzrbxpe7vGTMyr0oRNPA
         pwWrQ+RvgTUoGWSRd2xvnAUfbtapiPhLSxTkVp3tYwLx3bG2tomw4HtMWN41kD5QkPtX
         OGTKPSXwnsIkHKYZ908c90c2PREhQGWQg3neS74gHYHWzhayV8WBOlFzsKQeatGJuUjc
         8ReV3lG8GNd0GXTdAMMNzxZm1qvqAHXTAXLd2FKSP7dCkBjcB5cTTLt73CfkdHpHLl0d
         p7zQwzXp1yBFmDB/SJn+4SjHxviGsgXq3YCCe2rnhPlXVPg6oUQhfcLu/aU0EJjAE9rV
         OOuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=VPOosFRwHe6nqVTCb00726dovxdXLCZh1FpqWd6YnIM=;
        b=MtVaIlhwtXQSX9Wklvz2Y5iNCH/GMkW3M/BsIVgiZRF5qyxoodtsKY9Qi5ymERpOsD
         rX0sXJxD3KfW/tPEBmDG+vnxVbLGz+Q4wGwdwW2oTnx2+TwydESuaJf9EnR1sGsOmtwK
         1tapZPMKBuKTZUU7HQbp/4XKLpsaeykIcjj8YTuM7iMhBbmsPzAyFKjiatv/9iwGRYJr
         HN4780e6LExbThpufpkj6EqCI5gflnUyjvaMxZOtDGsGskEg8nFlJovsQaffmObPmH3+
         6QE5uWBLQSpeEL8beiUu0/+vNhMrMm/YLgNmyR3xjKcPB+0w8BJtoU3IQP4P9o0BglTG
         I8vQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OYb79BAk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id g26-20020a056830161a00b00638cea5f504si1232373otr.33.2022.08.19.02.09.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Aug 2022 02:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F14A7614D7;
	Fri, 19 Aug 2022 09:09:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA8E8C433C1;
	Fri, 19 Aug 2022 09:09:47 +0000 (UTC)
Date: Fri, 19 Aug 2022 11:09:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-kernel@vger.kernel.org, Duncan Sands <duncan.sands@free.fr>,
	Felipe Balbi <balbi@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Guenter Roeck <linux@roeck-us.net>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] usb: move from strlcpy with unused retval
 to strscpy
Message-ID: <Yv9TWTnYc4T3tkqA@kroah.com>
References: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220818210116.7517-1-wsa+renesas@sang-engineering.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=OYb79BAk;       spf=pass
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

On Thu, Aug 18, 2022 at 11:01:15PM +0200, Wolfram Sang wrote:
> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
>=20
> Link: https://lore.kernel.org/r/CAHk-=3DwgfRnXz0W3D37d01q3JFkr_i_uTL=3DV6=
A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

You might want to fix up your email server, b4 doesn't think it is
sending out valid emails:

Grabbing thread from lore.kernel.org/all/20220818210116.7517-1-wsa%2Brenesa=
s%40sang-engineering.com/t.mbox.gz
Analyzing 5 messages in the thread
Checking attestation on all messages, may take a moment...
---
  =E2=9C=97 [PATCH] usb: move from strlcpy with unused retval to strscpy
    + Reviewed-by: Richard Leitner <richard.leitner@skidata.com> (=E2=9C=93=
 DKIM/skidata.com)
    + Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.=
com> (=E2=9C=93 DKIM/ideasonboard.com)
    + Acked-by: Shuah Khan <skhan@linuxfoundation.org> (=E2=9C=93 DKIM/linu=
xfoundation.org)
  ---
  =E2=9C=97 BADSIG: DKIM/sang-engineering.com
---
Total patches: 1


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/Yv9TWTnYc4T3tkqA%40kroah.com.
