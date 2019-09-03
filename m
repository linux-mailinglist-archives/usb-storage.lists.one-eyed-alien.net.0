Return-Path: <usb-storage+bncBCUJ7YGL3QFBBQ6PXHVQKGQESMYVFUI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 6400CA6982
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 15:16:53 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id q67sf14038517pfc.10
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 06:16:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567516612; cv=pass;
        d=google.com; s=arc-20160816;
        b=OMVn1LrwHtW9nruElqewWwwoj2oZDrWWkQ6foDZ/nw+Yq530ctaSFG/3KeKB2VxPk+
         p+ap1NBJWWeZEjHYZRaOf0D+ebo73/jf+ZxW2SyUZZCeNd5lohpuCpArO4oYoc1h31kR
         v7y018USZcCUnKSt21EtPVhk1JF0eFhzwIdK1UEx3gXixQ5RO8F8dGwzF/Vcahi9wAv+
         vcnKp1nVdYpnC2GmyAPPbC08xbbaC6dTB2UkksjU+1vafh+EUWkEyEaTfkNk3JrPG62o
         l0GmWif+81XTAO+58WY1fpn90PHL8jKFaCIVViqPnbWqO1WdIY7lmdCUt+7U+Zai3C49
         sXbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=t3tVLVLguqePpe/adn1s8llnfros0uaGjPd2UtyDhnI=;
        b=yoSqrwrd2w50W02OWFM0rsC+8rQ3hjG/+Gg0Z3UNRgCTwMgFZkcep4OxI1lum50zcr
         Dyobtx3X3/a6/ZTxjpniLNdo0Lno9r5t17BfzPwZ6xFaZEbmRvMZRTvAyA6cuQXQh7Vp
         0nsHi1rQ1gwYKV1fcIObE9Zb8XOuCNMqFPr6LpiFqUBfNoC8vC+OLVQZ8UGY2XDfAvMh
         OORD/EOSmrlacctlHjaKedLkZ25FqWzatkKy5MSEsnRLX9XI/qSB95Cv2Q+cHDwe3BwX
         89Y9btwVKjlxcwbm2pDr3Hb7DKc2wPh773Ak0paFtha4QRzAAe6lDSwA4A1aIJ3Wa3L6
         nufA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XJ5AeAZz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t3tVLVLguqePpe/adn1s8llnfros0uaGjPd2UtyDhnI=;
        b=IQt+5Zu62h9Xg6ne6MIwuxNiED8bs/ncHaIAdbi5PaJtEUsUxzD3uuY/1jCTzmkBcq
         XuAxeTiw6nRn9AJW0B+FQ/rl8yU32vpFAvMf08N4cu8T+LxGKK5w90X6Y5H52dKoVs/G
         wIGjsN198X5GpmKW4ougJthbBLtKIO7Jp+4jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t3tVLVLguqePpe/adn1s8llnfros0uaGjPd2UtyDhnI=;
        b=gtshrnIGdn/U02khafviObYqwkKg052KaOtP8CK9+zoatGYswS56CnYt+vZvyI79WZ
         ocXz7fgRdaw9GbW5dS1VyvLovqYySscz++0zsw2T4PO8A9CinOzkPhEHdvQb0m+LZRnl
         HPt6lnFdTbEYngvooqLxUPgn+WLaxEIElYMprbmv7a/c++P6jeZD24Vbqf1GOeiIJf0b
         AOKHuZSO4vskMB1+b2CrqKvzNndTuqOyXE1KJSL+S2y1oT8oZ1oyvfx7s+R3lF+7ihQ9
         GrmJ8IFXwDf145IzmhFus1aHIteDJbFyJUhNtwrbeM+5d8JeyUt0D9/Xv6yos1eLfgoD
         Hodw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV1Rm+dRdvAmQeMXP8mv/l23hTllSwvLi+IHicBKhBSjfl8WA9G
	8AeNdipGRhq6x5QljkuU709OXA==
X-Google-Smtp-Source: APXvYqwahLi0SLpGfB2f/zWPN6ao2P8T9WI+kaFfOcZW9FzIaW+97THoa2y3AY6M3pCnEf3JGep+BQ==
X-Received: by 2002:a17:90a:2243:: with SMTP id c61mr7934105pje.39.1567516611422;
        Tue, 03 Sep 2019 06:16:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:ba98:: with SMTP id t24ls4977900pjr.1.canary-gmail;
 Tue, 03 Sep 2019 06:16:51 -0700 (PDT)
X-Received: by 2002:a17:90a:ad94:: with SMTP id s20mr19018669pjq.42.1567516611108;
        Tue, 03 Sep 2019 06:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567516611; cv=none;
        d=google.com; s=arc-20160816;
        b=mUjaZIgqqruKf9CFDzaqmBGXpoTthvbaSaqSlTnwSJ7BpvPnY2W16umY59CPF57WJg
         cH3lGPWnnkZNfFgYVPENzhJfvEX00NbiAbKXnDCwzwqJBe8IdFNTDiRWjVyKY6aGnRK4
         7YmsKd+454ARsITkooElCxIsLDUHmZ/obRC/Put+nq+rHGGK730PBYlUWf2b20JQOdIy
         79H+SIzkfl2w+yDy/OVFQbANFRHc49LqPkA7qMj5UmJwzu8ZmqgIs1z0CdduyW+Sg2px
         sGdgLqqivJtDxo/6Ko4r91fjeYq6g4bICvWWsv4L7E+6j0q7UZILIVOboRn+/s186SiG
         mXFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=d3vqv5F/eg8btKXn4LI6mxzhJo5LpdLMOsV/yv2aNNY=;
        b=EYlqONZOc3/zIapXMdy376gWHyp4IC/Bjn6ZpkJxrfJzRcsut2RfJgxYhGrScGcIX1
         hn2+KvhNG8Q4fKuRK24wh02m64q7zpqK+hZH2nz8bUBZxCLy9p1GMu2PZ5ZTYrJLsPlI
         hN33jVqqe9nWisbPLgYEUSiszrGzXw1tNTuLTwlI2pLsgclb5e+Nr3kRmgjDJ4xFntze
         vjPLJnbARyqe4H0GbIDBJL9Oj0HK3Ad2IDGVewVY3YiVuTTQgpQtjDQnFEPchmK2IJEW
         46oR90GSPBOfflJznOl/hW16NrJbLdNwJqfbdpuDwUwdSaB7+MzGTwVdmJt3BNtEKo8m
         Rm8w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XJ5AeAZz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id d1si15142593pla.79.2019.09.03.06.16.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 06:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 601472053B;
	Tue,  3 Sep 2019 13:16:50 +0000 (UTC)
Date: Tue, 3 Sep 2019 15:16:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Cc: Guenter Roeck <linux@roeck-us.net>, Lee Jones <lee.jones@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: usb dma_mask fixups
Message-ID: <20190903131648.GA19335@kroah.com>
References: <20190903084615.19161-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190903084615.19161-1-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XJ5AeAZz;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Sep 03, 2019 at 10:46:09AM +0200, Christoph Hellwig wrote:
> Hi all,
> 
> the first patch fixes the ohci-sm501 regression that Guenther reported
> due to the platform device dma_mask changes.  The second one ports that
> fix to another driver that works the same way.  The rest cleans up
> various loose ends left over from the dma related usb changes in the
> last two merge windows.

Thanks for these, all now queued up.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903131648.GA19335%40kroah.com.
