Return-Path: <usb-storage+bncBDA7X7F2WUEBBHOEX7VQKGQEZ4SH4NA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA2FA865E
	for <lists+usb-storage@lfdr.de>; Wed,  4 Sep 2019 18:11:10 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id b143sf23633435qkg.9
        for <lists+usb-storage@lfdr.de>; Wed, 04 Sep 2019 09:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567613469; cv=pass;
        d=google.com; s=arc-20160816;
        b=FpU/vmiq1zHgihjPd9/Yqcw8N5ANfWVmnPuH6LqXkddrknOhjnWDJQm1kHmBIAx2gj
         CSZ9APAsmqEsL5cV9awIGvny/ZXCn6/4YwTXH27zVggAZf/sXVte4DIqcn/hZDIEr1BY
         YygD2MQ86jVIeiIpict5yvVJMipRlvyQUSc/FqTXmoZXJSPDDMystmOFG5Vh9C8cXVOe
         f8GOyI5G7mCu9/NJwaiSUuN2l/L0Wjxn2oUfXyt6VjEPAaS5uv/OYzEaR8zLkA6o6xV6
         1txwgICdw9ToQDYIBrO1aVALTz3ReWU8N+JU8DVaTYC1r/SKuXALCvLVTjGUyPvmf4vp
         Wfiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=UNCLiZZn4Oq7lbNSE/JZsUWNgs6vht+Yhbg+YMpuB9g=;
        b=CPOGO+EoqMvUHTR0eFg6yWvz4QpD5FoTW3mtKzzxkOrEtUF9SX2d8tjjI2JSZL8C4p
         pu+S7E07zFKWN2L4H7U2tfA9yH+JtjWXYLd8IXI+fCL5R+yXpfFh4FkzK4uRkddprD09
         drBs0lenAh48X4kHD0Ofw9Hyxshw3z6x9p8PsDTwe6BFYDcBWPCFeDp40/Byn/RL3BEL
         023ETwhjRRnYX/SiBcIgwuG5WU6CFy8UkFXSFtSTlDt/vFHmZp5JkWIwK+PvkK01B69i
         GVN1Uv3wOLPZox0lYSJ1Z+TgAZFpP1PkSskOqrzROxL0TqWnMkSdPQxTigZqqI0Pgkq8
         5jpg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tDMIAcZL;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UNCLiZZn4Oq7lbNSE/JZsUWNgs6vht+Yhbg+YMpuB9g=;
        b=ENs66sSRygmGVWIXXW+PKDlcG0xGCQYUDJ+tDzRRA1r03SYF8LNKAYow8VBFfk3waK
         C/V2ubsy1VTn1uVyDLGvKyWZY6jBwxKQLp9N8Rv7yyIQ/JX+IuTiDyR0Wo49Nust3vLi
         RgZQGSUq+jeWYH2aq7xrtXE+2J/ZL6IRpr4RU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UNCLiZZn4Oq7lbNSE/JZsUWNgs6vht+Yhbg+YMpuB9g=;
        b=EzVouYRlipQDrbWCWdQ53xmE6OCLRQ8WbNko07iXwmzWnhmAsWJhGXkriNf5DHfytU
         8iguQUGr6Xon5TH7ybBcXpes0VH4wO24wqwDSKIDvniGgxCV2n6W3rwrgOSJmH5f0CzR
         X2hz9ip8W1Dx+esf/vVzvIBbSCyN5bvzZr1P5zetMCYJ/bVzPrptnxKuCy3KRJSvo6UM
         tI1KeLSyKoZCcA45zlM0+Ru3mf6plDVNDW4/pGvqFgQ/kxuIvlpE2eOgGKOJChHChFGU
         lJEYg3/WXFVPmbXcYCG/dNrg8cu8NIJFAnyzyjavy1r+vlZ4Lvix7LXTaAoK7C4Dy32U
         kthA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWqnOATthpym64p1EFwZ4Yv2hxwbYT67Xu9T1qlA1/g2aHJ6Asn
	Vw9wcamJE8u663DoCWbBs7tVeg==
X-Google-Smtp-Source: APXvYqxWtCYkDWoQosDef41yoHDYGijG9137splYA101Xkhc0Yxg5iWHHAgmdnhG/RXJ2E8sTQfqZg==
X-Received: by 2002:a0c:9051:: with SMTP id o75mr17507699qvo.147.1567613469252;
        Wed, 04 Sep 2019 09:11:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:d92:: with SMTP id 140ls1363441qkn.13.gmail; Wed, 04 Sep
 2019 09:11:09 -0700 (PDT)
X-Received: by 2002:a37:f50b:: with SMTP id l11mr27202754qkk.347.1567613469033;
        Wed, 04 Sep 2019 09:11:09 -0700 (PDT)
Received: by 2002:a37:a15:0:0:0:0:0 with SMTP id 21msqkk;
        Wed, 4 Sep 2019 01:57:39 -0700 (PDT)
X-Received: by 2002:a1c:be19:: with SMTP id o25mr3255313wmf.54.1567587459244;
        Wed, 04 Sep 2019 01:57:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567587459; cv=none;
        d=google.com; s=arc-20160816;
        b=FxGh9fJfH/5bea9gTVji7IAAn5yXFaMQMjpI5WBIjYFUG78LS1XYpR/2AOEPE7Lz3W
         7fbtaxSgOd9GrnSe/vk1ktbpO+Z2ZfNFTYqq/MZzKFAMzJ7xfG6JFrSvkRjJn4Y/1Rc5
         fTdakNi7hAksxXFrV8DnBe0qUelzbu6Px+UU9V3az50mwLJpq2kvSPTkX4tsVLgl3ufo
         GVFfImsV8y3mu2l+R8ggr4sAvfUrCKZQx6gBmnk2Rx8hSNqXTMfRqsdnKWytAMs44/Gj
         e4KYe4fhSh8kh2dGRDSYYu6rGTYuG3jbc7CiaVw5c3b5N6nnMwp8fN8Qu5N71OJ/Loiy
         xUBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=A6tCn/bL9VqC8vfSP/XnAcqw4FN3+q77kJ2LFpOO3BI=;
        b=n527YyPvIuAAJ4o7DX7EvLSz0zQ22pUEypxP+L71CyXixjVgzavZWBK3jUSc4dlop9
         GyAIdKy/jEj6l7W2JIy5b6doTtsAWwlfRB8IegevAGdJ/qc0QRvsl5ZCWyrvgYWNzEvY
         ZIE6pdqhgtNcSLHTKDg7DZP45S+cc1FXmDpsi/+PaDMJt3FB73wXn9NEzjDrI95IlFQC
         kAR4ib7A3pJ7NBLYvvHLFHN+6q1QEJNHEYz3taw7bCN3ofXegKO2/JHKc9wGGkCifZhI
         aN/e9qS1QXiq0bLFdawHwB9tLB5JF5h6Pz8QvOnZSaDXHDgtLz47tAAU393sPBoRNy/s
         hG5A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tDMIAcZL;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id z10sor3177866wro.30.2019.09.04.01.57.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 04 Sep 2019 01:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:adf:f404:: with SMTP id g4mr46021135wro.290.1567587458844;
        Wed, 04 Sep 2019 01:57:38 -0700 (PDT)
Received: from dell ([95.147.198.36])
        by smtp.gmail.com with ESMTPSA id u68sm3507042wmu.12.2019.09.04.01.57.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 04 Sep 2019 01:57:38 -0700 (PDT)
Date: Wed, 4 Sep 2019 09:57:36 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Christoph Hellwig <hch@lst.de>, Guenter Roeck <linux@roeck-us.net>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: usb dma_mask fixups
Message-ID: <20190904085736.GH26880@dell>
References: <20190903084615.19161-1-hch@lst.de>
 <20190903131648.GA19335@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190903131648.GA19335@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tDMIAcZL;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 03 Sep 2019, Greg Kroah-Hartman wrote:

> On Tue, Sep 03, 2019 at 10:46:09AM +0200, Christoph Hellwig wrote:
> > Hi all,
> >=20
> > the first patch fixes the ohci-sm501 regression that Guenther reported
> > due to the platform device dma_mask changes.  The second one ports that
> > fix to another driver that works the same way.  The rest cleans up
> > various loose ends left over from the dma related usb changes in the
> > last two merge windows.
>=20
> Thanks for these, all now queued up.

Did you queue the MFD patch too?

If so (and you can rebase ;) ), please feel free to add my:

Acked-by: Lee Jones <lee.jones@linaro.org>

If not, no sweat.

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Linaro Services Technical Lead
Linaro.org =E2=94=82 Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20190904085736.GH26880%40dell.
