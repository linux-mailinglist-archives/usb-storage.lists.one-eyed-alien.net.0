Return-Path: <usb-storage+bncBAABBHOEX7VQKGQEPG4YBGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B30A865D
	for <lists+usb-storage@lfdr.de>; Wed,  4 Sep 2019 18:11:10 +0200 (CEST)
Received: by mail-oi1-x247.google.com with SMTP id d206sf5882092oig.6
        for <lists+usb-storage@lfdr.de>; Wed, 04 Sep 2019 09:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567613469; cv=pass;
        d=google.com; s=arc-20160816;
        b=s1pNJdyob3UlFr7ULo5JGsqtNakk+44Dfe5KJc+PdyqPY9KuZMaygxwV6ERohw8AtG
         sKBHK2BIDAv4nEv/fu32EY2UtqnmjdRyGvsW8HbM3NTDvQS/bKmRFa4kmNC23VVcTQSx
         PtOKy40yLit096RC4Aofj+kP2Dz3MNLNQw+/h3EuKeRhH1x5kRAS0RjRbhMLOVNN6DaM
         lj/f3mrBajKfu5d12g3YJFfdT8GWllkea442Bex98diZBOvQaMuoNXP8evARmzSa6Cy7
         0GZoi52FQOIdvIAmqrOLAP4KZmVSYQh1+8a0fczrDDSUxgc5CG1D+FKoJRdH44dJi8Au
         vnHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=b4o8WzQkSdO4BIR+tLzQInyUyqf5y1Vh02d3vmcVpwI=;
        b=qevf0YmHK8OshFNW8C0dBcn/11W9Dktge/J7nuhw0eSkQf8hsbqoUqeGC67c6E0Ztj
         pUWCAUlZQOv+1C+UIO1e+KQDJbcwLlLcYh96aKzAYhvjETapjhkC1lBbsW8//Km0LcmE
         sefQVgO9cP6wg5uVdCyfiWHnZ+5nw6kWzvnkLZf/uqe4GSzC9GNhstugKWfQB95jDH2a
         29tH9oqTj5g6i2CQxOOuPxeotrYRWxVD2/VlKJLkYPJ49YK9jVttI2qspghX04pcD3lr
         nDTFNakUxQzENXCjSRrDj7aRepo8trDuDoP8fB6tbobfMl1W4JDZdFpkJteUa4CN7HQ9
         Vogw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tc1bbOw3;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b4o8WzQkSdO4BIR+tLzQInyUyqf5y1Vh02d3vmcVpwI=;
        b=hh0/z1+PtdqhBpXfq+tKJFEt1tfa0RAhfNa/0BKocum36/gdtoM7npmEGCt1FyMwsD
         QDfTT9L79mhagYJZPhO/797jI14xwegPDqLE2A11w/1RrG++vH2YH7fmAKVNLeLRgj9W
         aTxzyKH6mKExmJlUR1iUCOU0pU1XEC4zH0aw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b4o8WzQkSdO4BIR+tLzQInyUyqf5y1Vh02d3vmcVpwI=;
        b=eHN46bFWHaLz/t8iBz8D01uAyJ6CR6NPa8ICRpn+7uouPGBdiIfq5QNrisR2N351Qc
         jJfl3d4/z4hY0J8JHj8+t5k1vvJuCAif2IBAkhVoqfJfVcvZOeZVtw3pyNvnhLN/dyTL
         xqzzX5oVANo1cyFNCb/NN0IUltieSPLORr0kDC2x5nkoOxuFADt75ZnreHhBqWPh02Yr
         psv54On6OmmEHfy5pbFBQX0/BHvpCPxXv+11RNtlK+0PRwqrV1hT86kAQaYv/gKLlSIB
         B6Ue/PnYiZejrpQZhNKj/EQiTbPULQHHqGU9SJuDhD46Xw+Rn7cehEP8lGoNPSW8AMbJ
         gWhA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVacyUCX32dFlJGCFIQ7wcJENo8o2YzbvMHQ5sQgq3jHQwsuRMT
	XngjEYuRjeZvOoJhGzIEQgPfoQ==
X-Google-Smtp-Source: APXvYqwbXDIND8quyeQEb5OMv92J/eDVnFnGNjUe3LJx9OifHeqclnZLpPZ2Xh4QF4Fxpx02pYs5Kg==
X-Received: by 2002:a9d:6852:: with SMTP id c18mr6542687oto.310.1567613469406;
        Wed, 04 Sep 2019 09:11:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:1e97:: with SMTP id n23ls525444otr.5.gmail; Wed, 04
 Sep 2019 09:11:09 -0700 (PDT)
X-Received: by 2002:a05:6830:1395:: with SMTP id d21mr2534315otq.323.1567613469058;
        Wed, 04 Sep 2019 09:11:09 -0700 (PDT)
Received: by 2002:aca:f588:0:0:0:0:0 with SMTP id t130msoih;
        Wed, 4 Sep 2019 02:54:36 -0700 (PDT)
X-Received: by 2002:a17:902:aa87:: with SMTP id d7mr5271853plr.203.1567590875917;
        Wed, 04 Sep 2019 02:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567590875; cv=none;
        d=google.com; s=arc-20160816;
        b=IDpBRir1GB0XM03pIuFalD/P2/Bmb5kUFQQmz/8bslloxJ4XdJZxuI9wRO6YkM1nan
         iZ5xaa/+kCtXcX85ZTIbgrbdWKyZe9aDJx5kBuwFwKfgIngfgDcu5HlR6orPXD2DXHpV
         gzz68HEnOg42JZp8Cb9puxs6Pnwm815gYZV8FNSNOKp+JeYZc/14MeMaUWljEWeTACOQ
         +yK8cDFhZXRUh09ODv/F3Hg5VRTdDS0sgKHPjLe28Y3NCMk8F0MWEJ7dps7ZFzAFxR1H
         prpeZdlk0t9g678nqojgcB74aA9yxCBEKRmz6Tk1TTQ5do6aM5yxiT2PjtigbOgguHRz
         SIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=JhR6cBZJXNkOmtdDQlpAlb7TvbwSunLjm1s429y9/Dc=;
        b=xeENol42IBQvGcMzyIzTjCpa7BnHdhoF3LLm5ZTWN0+hkGArIW2t+egaDovfnMpJEB
         B8vutCm+c2+Fm5DAaJ9j/5ylLmDsN5RBHd1kgccUuuxzaqKtH6/GjTXMcrpYgWtWs+S8
         ktAKBBIuljffaJpsY/dfzyEXfTh2nvVmG51yDXLGbEtghOYh2RoQdalHRBqELrRIXr2t
         XBJxFzUKm+2BwH0zyT0s0mfOm4Zjm4GfRWm4Tu35cGODLG8RifEKm1xUvzgfD9cC8lnv
         vtmV123emAyrlJXd77vjBiIfYz83afhSUQ9TLnMnhDO/zgWKqS+f9oneRrFXVPWZuGPn
         QoeA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tc1bbOw3;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by mx.google.com with ESMTPS id i189si16194859pge.253.2019.09.04.02.54.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 02:54:35 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id x849s1Pq011902
	for <usb-storage@lists.one-eyed-alien.net>; Wed, 4 Sep 2019 18:54:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x849s1Pq011902
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id m22so4793577vsl.9
        for <usb-storage@lists.one-eyed-alien.net>; Wed, 04 Sep 2019 02:54:02 -0700 (PDT)
X-Received: by 2002:a67:fd97:: with SMTP id k23mr21110513vsq.179.1567590841199;
 Wed, 04 Sep 2019 02:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-9-maennich@google.com>
In-Reply-To: <20190903150638.242049-9-maennich@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 4 Sep 2019 18:53:25 +0900
X-Gmail-Original-Message-ID: <CAK7LNARgxoXAABNXhO-LzxAm8rh6NJqAm9-iMo2=t2c_6_KXtQ@mail.gmail.com>
Message-ID: <CAK7LNARgxoXAABNXhO-LzxAm8rh6NJqAm9-iMo2=t2c_6_KXtQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH v4 08/12] scripts: Coccinelle script for
 namespace dependencies.
To: Matthias Maennich <maennich@google.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "Cc: Android Kernel" <kernel-team@android.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jessica Yu <jeyu@kernel.org>,
        "Joel Fernandes (Google)" <joel@joelfernandes.org>,
        Lucas De Marchi <lucas.de.marchi@gmail.com>, maco@android.com,
        sspatil@google.com, Will Deacon <will@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-modules@vger.kernel.org, linux-usb <linux-usb@vger.kernel.org>,
        usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org,
        Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=tc1bbOw3;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.90 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Sep 4, 2019 at 12:07 AM Matthias Maennich <maennich@google.com> wrote:
>
> A script that uses the '<module>.ns_deps' files generated by modpost to
> automatically add the required symbol namespace dependencies to each
> module.
>
> Usage:
> 1) Move some symbols to a namespace with EXPORT_SYMBOL_NS() or define
>    DEFAULT_SYMBOL_NAMESPACE
> 2) Run 'make' (or 'make modules') and get warnings about modules not
>    importing that namespace.
> 3) Run 'make nsdeps' to automatically add required import statements
>    to said modules.
>
> This makes it easer for subsystem maintainers to introduce and maintain
> symbol namespaces into their codebase.
>
> Co-developed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Martijn Coenen <maco@android.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Matthias Maennich <maennich@google.com>


Without any correct dependency,
this does not work.

$ make clean; make nsdeps
cat: modules.order: No such file or directory
cat: ./modules.order: No such file or directory


I do not see any point in the Makefile changes.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAK7LNARgxoXAABNXhO-LzxAm8rh6NJqAm9-iMo2%3Dt2c_6_KXtQ%40mail.gmail.com.
