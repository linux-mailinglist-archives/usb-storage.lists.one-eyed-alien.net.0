Return-Path: <usb-storage+bncBCUJ7YGL3QFBBU4O52MAMGQEEV5NT2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id E33B55B3EEC
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 20:35:01 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id m5-20020a170902f64500b0016d313f3ce7sf1739122plg.23
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 11:35:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662748500; cv=pass;
        d=google.com; s=arc-20160816;
        b=n16AMn+FmqhywnKfxDmiO9fmwpvJFEl8BNZ6PqmsZGRlqcfqBQz3d7W6CDRO6vB7Yi
         AwoueAEevkoz02HPQ2yyqozx1aXQSgblYxthjU4vS/uIUDUxdgk/JsXrSjzAuwJwawq8
         /vak3qMncz4wqvz3z9ghwvftdIyor7bcnNn7ahOXWtLgMNWJgUzvT6ri5bTFAcJc+TGn
         c4fL0c0GyTEoxrf7JA/1Xm69pjESv4BXG64UknLUZDv0dP6FZHXGO+po2X+THLUvQAAd
         ubmgqomeap781iffw5wfhEp9S4pT6WEMrdf6VNaQz0JWznsDnNdsQvUV7FmCByz6Ow9H
         diaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=eHDS6aAntXHSaxgBzg/Cxa/IgWpm+uL69NgN3VVmfsY=;
        b=u8IAaSh4qESKePZk4kpMe6qT2R/tGIt4FrWol3S7GJHUB8Cz0E/xmCA9S3RMOxuWRW
         ExaRQqrmAQfqZH5wBG1hDmuCfPu8S3QzZ4cCdICBH53+dCRxHZiAUewrNlwAztYeK6aZ
         ZQWmmirJXDZp/mxGUvXvsHkN0QIjW76wYUXGuDnYNrdiy//zQ0cbX+T3Nah4A8oen6JZ
         RtWBjMVpxAFCIMVmoT6r9oBX0CwATwT9wdZZbA8Gv6YqiMQi7lHXDLPYQilM8X20XCYG
         Ordj3QFw3dss4yHACBF4kEH0eKg2ddLWwYceQvSfxXJ9qGZ/dwoPgUdwEz6t4G3tBsar
         Xehg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KJ7ibX3T;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date;
        bh=eHDS6aAntXHSaxgBzg/Cxa/IgWpm+uL69NgN3VVmfsY=;
        b=i7vhCmVTo+GUtpzLTdcUBss3q+HUw+E2efuixyh2bQmc455wJMFHi0GWTSRzfA5/A2
         wJ3hgXnaUkvbXU5d6t11hmaIF+6s1jzaQfbmm1+IaaQfRgg0z27YVxhRmn7tNYFl5e2p
         kHA7u2B9sgFWMxBMVWFN+G/ptLLdrVrTPMUJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc:subject:date;
        bh=eHDS6aAntXHSaxgBzg/Cxa/IgWpm+uL69NgN3VVmfsY=;
        b=zA5ubIOkbEUsW+pXOck7O/7fiTmrBI/Sz+s28uyATzBV/ypmg8l93YHoqWGCP47djf
         gy9aOFpX8cqaCbiT7b4kYkw7LwLCYpoL/gt5D9E8oNrrs2eY4qwOr74UE34M5cgmJ2fc
         5tDEfBVNEZsBXE/QlWRPyXUeW6J6GNvG0n86Yym9n14o2l/JTQUb1VT1E/Sf5O58cJQy
         fM1mvWx/bu0/nJriG6UXHTdIoItyEL9PAbs3g58CVxF4ThNDPKQTHxJhi60A+TjYFwGS
         rQtAk/7/Q2S0jEFh12EXQU7CeKfja2CTsG8vql1TgRK7luPkx8kXIEqSUwgzlSYNCGbX
         C+LA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2kr/j/pZLwOC6QIe6Ltp9KtIJOqxvMIrkcwpJ5sYyidvP87TvB
	EJmu2DkdyEp5yQV/VYcXKwnTGA==
X-Google-Smtp-Source: AA6agR5BXQN9K2eZ0rDwioj0sRrDnpZB2XvqGgNOjcc9QWWaSrPiuxWFceHrh6P0xduIZ6Z5IorZyw==
X-Received: by 2002:a05:6a00:b8a:b0:537:f81:203a with SMTP id g10-20020a056a000b8a00b005370f81203amr15411236pfj.80.1662748500155;
        Fri, 09 Sep 2022 11:35:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:a88a:b0:200:66a9:ced4 with SMTP id
 h10-20020a17090aa88a00b0020066a9ced4ls3782571pjq.3.-pod-control-gmail; Fri,
 09 Sep 2022 11:34:59 -0700 (PDT)
X-Received: by 2002:a17:902:e808:b0:178:1520:b255 with SMTP id u8-20020a170902e80800b001781520b255mr1574561plg.54.1662748499293;
        Fri, 09 Sep 2022 11:34:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662748499; cv=none;
        d=google.com; s=arc-20160816;
        b=jtvr4zRPCysvrPCHaNOJtTgw9F6iXnL5BVQS7YVZBJHUKdFj+sqTjvIDQt1ON9WQqo
         bhEmv4KOqtAr68EUBFi7cuRTQ+Xu2Fx+sllcxaQLQglnVYYEpCkwfcXA7sGPzG6MFbpX
         R7Z4VIi1jLJoBHT5nTQc3OHhSe+tUL0rhcI8UQeMxlJxA/+aKM794XNc6pHMfjA78FD3
         UbuA/mNVPa/THfMGOrk8JQ3u1BKaw6hoUHFllS13gCI4+C+GdwaFjYnR3jb0evUWbq8J
         lii4k7w6Lv/N91KyAISbAyRzrMypHBiUIdz7kzVWxaSszo9xqAU4xe2YpywbDvBCTc72
         IdJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=F9H9hFnX/Bl3VLaNgLj/Ei04yXf5U0ULQUE43liJBsY=;
        b=SWQjWhEFiKq6ER5jl7Ezyio4/9Gkn4togMHVmfripi51AyoBoT8Ddyfr0N2jO+ohfg
         rIhoBxeUGhcQSC2eYVnf6+bRlG504JO7cl22gHh93yq0EiLFJvvDb3rifXTqcmyYLBcs
         O5SkkSmRV9QWqUVW8rhdN/uR8/2PH1ZLhlYhwX0+xX/VUta2i+lBCptUCxiT2v8tXKcG
         +ktYZt60alyoEPKPgHNigGtFb8rjyzHibNI3FsXAjrue71q9m7WHlMPIwilTwmxfSLFf
         KlzvRg/UXOEicKX2NyNamK+whMqQCFDBDteRo1TjtTKHke6QDpuvHCvPfCeAvlqvgQgf
         y4tw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KJ7ibX3T;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id k69-20020a638448000000b004308011fd84si1209316pgd.426.2022.09.09.11.34.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 11:34:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id CC646CE23CE;
	Fri,  9 Sep 2022 18:34:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE13FC433C1;
	Fri,  9 Sep 2022 18:34:55 +0000 (UTC)
Date: Fri, 9 Sep 2022 20:34:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>
Cc: "zhongling0719@126.com" <zhongling0719@126.com>,
	"zenghongling@kylinos.cn" <zenghongling@kylinos.cn>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
Message-ID: <YxuHTRKC3Gv7cemF@kroah.com>
References: <1662720530-32313-1-git-send-email-zenghongling@kylinos.cn>
 <YxsucjOnUkb8NxKo@rowland.harvard.edu>
 <202209092121245768249@126.com>
 <YxuDzEdZX1zrIwOQ@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YxuDzEdZX1zrIwOQ@rowland.harvard.edu>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=KJ7ibX3T;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Fri, Sep 09, 2022 at 02:19:56PM -0400, stern@rowland.harvard.edu wrote:
> On Fri, Sep 09, 2022 at 09:22:25PM +0800, zhongling0719@126.com wrote:
> > Sorry , I tested it work well on Win7, not good on Win10.=C2=A0
>=20
> I would guess that Windows 7 doesn't use UAS but Windows 10 does.  It's=
=20
> surprising that these devices can be sold nowadays if they don't work=20
> with Windows 10 -- who would buy them?
>=20
> > I don't have Mac OSX system. We always work on linux=C2=A0environment.
> > Need I resend the version V5 for patch 3 =C2=A0cancel "acked by" ?
>=20
> Greg, do you have an opinion?  I don't feel very strongly about this.

I'm going to drop all of these now as they are not being sent properly
despite numerous requests to have them done so :(

So yes, if they want to be applied, we need another version.

But again, I find it very very hard to believe they do not work properly
on Windows 10/11/OSX as well as Windows 10 has been out for a very long
time now and no one would accept such poor performance on those devices.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YxuHTRKC3Gv7cemF%40kroah.com.
