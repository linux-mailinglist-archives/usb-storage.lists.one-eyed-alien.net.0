Return-Path: <usb-storage+bncBCUJ7YGL3QFBB64EYOMAMGQEFSEM4LA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACB35A9A5B
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 16:32:28 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id b13-20020a056402350d00b0043dfc84c533sf11722233edd.5
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 07:32:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662042748; cv=pass;
        d=google.com; s=arc-20160816;
        b=yyHtToo/WIG2GB9DMtCSSA0ez1UXrYDTceFo2UELZX6J46STd5YefBAWMy74t12Iq1
         hbRwX07Y6PfEHnZ3ULy71T9TSnDeEZ01X15tyGoIw0kkIjCIQqbYZlYHMN4dhTtRyyEZ
         FlathZ/bnnbXOBLUwKz7LCaXgFbEHbHqnPvxjQajbqVE/zg56vJjRg/NZ7hFu0+BUD+Z
         YFqRyLho2ffbNyllgv0ODwrlMsN0v0Qogor9Zu77BNDyOnbKfO9NuXxQHKzK5nVDK7YN
         4Qax/TDXcP1ywi81Qr90e3gAgRHFpoWwSQWLXm68/pvoQWXICUlQf9Wzk1Yo46oOBN2e
         f4Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1/XuW8ccFulcAT/QShzbRBY7SUZ6FwADSRH6SRUcfIQ=;
        b=GsGKvlJCt0tnzI7nXogWmrwF8vmV3KBUo7fpjWEgLnTIm1qIqNhHbxpWWCR1h3PhAi
         lzXLpsRQzkIiwIoqmwBXCtoSEhqMnYyDUvy3ZX1Qh8AQcoQZPq/DMppexpYv+AbPB/+R
         2WOZxx/bETObFVclN7tawECzsXgzZROAzzRI/A0iZz4cFachg5X6cHUlGdbJ4x0Hemxb
         UBJyfj1RW15aX0sv+kL0oe/z4fMTy1s1eZxm9ymRbMMe41RR4E9ZG2kE3bYsWlz9DBVA
         jH0pEs+s9w1kbFVZt7Rmlv6ya5EhkdzgjrxQ4tgQkjZ/DK93aVxn9VYzQm2Z/AjDlv5w
         E6jw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=i8c3MXZG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date;
        bh=1/XuW8ccFulcAT/QShzbRBY7SUZ6FwADSRH6SRUcfIQ=;
        b=jdBjnYXQSgqG8zAnk6bFUjoA/EpeaktkyTewrXmzzrVUyFI0cNpGPYFfuJTH0eauOL
         TSEXlTQ+HaFeKeyrg9KmhXCq6/WOo8KT44g7OwkG4COqOvbTT9CVQmmDEYDNN50zexTy
         Skkf22/MLm4Ml0ot9L3p97J3w54DBTVjZtxpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc:subject:date;
        bh=1/XuW8ccFulcAT/QShzbRBY7SUZ6FwADSRH6SRUcfIQ=;
        b=3XyW8s5h5unKjxLAnonKn72hGVZecJLLeggmP7grTg8tg88wo9TDAEjw6+qOQ8Lhfu
         tE4mQOGoec40k7TtSYeqB0TeWkbIXNkilAbrmHTdRMVKJv1KSTCyCUq7vXpsaQZO5Yxb
         1MAH/F7C+Bi+0jN9+c5g2P9nFU3C2ojFUL38C6BmsK04q0ESWRkBVdYG1k49zlrRE92M
         smmE/yKp2rzvfAGP4o3Bg18lIgkY5SE7V9xvlBFyp3jDsuT+ayDP5naOZFGbBY+FgTwj
         mQOUsV93O9P90hKSZW8XZH5fpQ2SE0VnhSrRDBDA48b8Ws1Tc6jveGuzNo22AipXt+yH
         IEkA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo1+MAKrUPhlAlQvCCf6IOTrnvTSlVkKNqSCARlFNSB2z/3z3Dno
	O41RXK9tMSjq/3whTv4SWPvxGQ==
X-Google-Smtp-Source: AA6agR7jPCC0B/Ea4qN/jKK7xHy0PeRKXzJiyFprvNbv2CUQ1Drd4jwy/1cGW1yl6asvXxg5dUZzxg==
X-Received: by 2002:a05:6402:2813:b0:447:aba7:2f8d with SMTP id h19-20020a056402281300b00447aba72f8dmr29523502ede.55.1662042747622;
        Thu, 01 Sep 2022 07:32:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:a257:b0:730:6d43:91d with SMTP id
 bi23-20020a170906a25700b007306d43091dls1414546ejb.6.-pod-prod-gmail; Thu, 01
 Sep 2022 07:32:26 -0700 (PDT)
X-Received: by 2002:a17:907:7ea8:b0:731:4fa1:d034 with SMTP id qb40-20020a1709077ea800b007314fa1d034mr24483325ejc.758.1662042746383;
        Thu, 01 Sep 2022 07:32:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662042746; cv=none;
        d=google.com; s=arc-20160816;
        b=uke6ytCorfqL2jAEGfVohyROlnbPoxGbVCmUEsw6ooKq/FudB5d2ANdhQ9vbfFlW3G
         oxbOLGeqoJkjmGr+2kGgtDKYMh5smKOSBOv6+fCGlRIK8LGqi+CoMm0Xk6RGKVM7AGc7
         hwZl2YwzTUDs9/Q06FtzDeI/OuqZSiTCPLUq48EoROQdIzvYc3klMDQPJnEpc0QLtR72
         HKXCF/Gcsbf/t6B+UCJUb1EquYUmUzW8oN+ubb03JK2Z/TbL6ZkjorMRAgDkuCV9bRaH
         UoxuY9lGB+qgsO9vTDrs5GCWrMzZ43EhPrPzKUWm0giSAFfvS4kZogtkb/i6fy127gwu
         tk1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=p+pjrw8lWCn1fBD4bMM1qfF6xKxOcCHfMXmWrFuwxRY=;
        b=dz5TMGbpOT9gePmC0sGGnIy6ugZ+x1KDrlluRyfHpDLJEBQYBm3oUM0p57+7QUsZ4A
         Nz4/M2szfZWVhjafoO5sUwj+8RVXzormyR/xflteekAMmjR9OR2lGg+slwOPylCiE2qU
         Bf8NmXD7BtIjmv7ok2YlW+F4tG6gfwAYrZGIFEtx95vl+uy+LvKUqOmpTqh9pilzZRK7
         RWMgkRIdg0DiaHNQJ/YlT5uhjvGEzHjU3BhLnbcO+IkXVrz6pqEi7UtuEAk8Lw+OvsG+
         u+8hBEhKNjxLLEf7gqY5IMVghdnkE2sxGx5v1dfzgGOYKgfrzkpqXaltBLwv4ZKbwgvq
         nNFQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=i8c3MXZG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id e3-20020a170906c00300b0073e3612dd48si11981437ejz.474.2022.09.01.07.32.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Sep 2022 07:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F3C08B82795;
	Thu,  1 Sep 2022 14:32:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38500C433D6;
	Thu,  1 Sep 2022 14:32:24 +0000 (UTC)
Date: Thu, 1 Sep 2022 16:32:21 +0200
From: gregkh <gregkh@linuxfoundation.org>
To: "zhongling0719@126.com" <zhongling0719@126.com>
Cc: zenghongling <zenghongling@kylinos.cn>,
	stern <stern@rowland.harvard.edu>,
	linux-usb <linux-usb@vger.kernel.org>,
	usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
Message-ID: <YxDCdQ885wdyr8wG@kroah.com>
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>
 <YxBvNEn0jEEd0lXV@kroah.com>
 <2022090120371974113815@126.com>
 <YxCtyOUkRlIqcC4d@kroah.com>
 <2022090121570194160929@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2022090121570194160929@126.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=i8c3MXZG;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
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

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Thu, Sep 01, 2022 at 09:58:03PM +0800, zhongling0719@126.com wrote:
> Some UASP capable USB-to-SATA bridge controllers are not compatible,this =
problem has always existed.

What problem is this exactly?  Why is this failing on only Linux?

> you can refer to other auther submit the similar patch.

What other author and other patch?

>=C2=A0this patch is fixed no speed,not slow speed.

I do not understand, sorry.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YxDCdQ885wdyr8wG%40kroah.com.
