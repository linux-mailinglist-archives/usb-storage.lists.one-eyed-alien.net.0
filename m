Return-Path: <usb-storage+bncBCUJ7YGL3QFBB6E4R6YAMGQEOBNO3MA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 743AA88D78E
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 08:44:58 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-1e0ae06181esf4841045ad.0
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 00:44:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711525496; cv=pass;
        d=google.com; s=arc-20160816;
        b=JAyfHCnvNECKKGEI24p6MSFrUbTRtbOeAYC7opHpeulc3DfmL2sRDh1gzsca5+juke
         GFyLxR1iV/nQhxkDDot4t+8gtJ6ATf7oyuA/9VcyI1c/iEHdcVsxufUmtJVl3sLeTlvL
         ZC18vSXr83+HXwBdxFNGB2zEFB5qtC1WnXq/DC/Fj8T3xEUSMrB7d2S9uNaibUcEDoOH
         kRvPRTH8E6Uwrg9/qxKThNE02lXXTYIxYRPsQL0ofO96fNeGyu2ekPmCd6lHo7gXU8bW
         dBhv0plluci4lIQIvXz1j522ZFN6f7kkSux4C5Mjvg5sRUCuJdGnkbL+HtMNrW1eYsDz
         UocQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=m0Mt9SWIzmCaarjEsnXfck/6cC1jnOD8eAigBePoMBE=;
        fh=2lskzOZm+XJnjFTUASjg3yymAG/YtCsUWHg4/uYNM+g=;
        b=vJlzdQFDxsUwkbCEjDU4JQtwmXZHdKRadxEK80I7Z8ClpGEB+xpbivstD5Ao3WxHCJ
         cGcaovzyJoUz0n35hGjWFC2gU1VriFw6kwhSJTMltGWz0GfL4Kp+S/AepWUs6Z6EqLlf
         ufNo2uzEzGcoQ1s8DGafyGGYVWatHyZghyCDYzyG6HLr6Z0F5j6hXeAUhjh3jr+FlnyF
         N2f0Rj4apCMyWeZHM4X6WtEIJSAaONNKcZHF0WHgVRrX6Pfm4pc/YeD7aYwaGZtp5oXp
         BnoRq9OyNQon8ClTzNiSqWlKEtyCf9Mcq+matkLwLQKY7z8+bTCuzvgJAEBvLWrS1Nc2
         hLNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CIv7bUYu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711525496; x=1712130296; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m0Mt9SWIzmCaarjEsnXfck/6cC1jnOD8eAigBePoMBE=;
        b=he5mefH3EkiASG9ea8Ctv2dPCMVWknVifgBY3ppZAyPQLtdVFYMuexUIGyJx6Xc2cT
         kZuuAVSm6XTNs5h9RBeI7V+M/OJJTF85sFUQW2TOgFkknUgZlFM3jflJSjqOAs4AcMqv
         Fw9Ly6T8Cm0ddtI2yysH7ALAz0k/zE28IkGIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711525496; x=1712130296;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m0Mt9SWIzmCaarjEsnXfck/6cC1jnOD8eAigBePoMBE=;
        b=dqPYZ3yqf2zOh4xWvFkPTCIBE2Mbjf3qXVqrXPUCUAjlylP3qRUteSg41AlGW5BzlS
         1Vav9QOwkF19ralM+RbSlkuDTARUCpbqQr4gqEsNw/Rf5htCbUb7VicSv5/6JPONmmAx
         y4emUNxBQ9c496f1l/1+JJqizff+GmtTufM+He1oVx6yx/Xx1mzYqvKgifUk5mvbhfS9
         lPLgaJDFHZujKTmMzOoqmFe5og8HzBHUTVAED6pbLKrIq5NTMDuq/nSm/KvdN9GoBqPH
         gjncfi99foT7sp4k/Ko+BnZU6J1zlX2m6Tf2H3vO7PeKziVvgRDkjrwKKrYQgF+tS2Xo
         pETw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVbI0WoovnQtO2dAENAVGgO7iEynl580V0I2tV3OJggUEgNezFWqz/qHMD7qxI688/JkzNvZQ5GXVeEpcTivxF5VrMWgU6swRMm
X-Gm-Message-State: AOJu0YwbYIqnmC45iK8KBH/39qz1uGTSK46W0qpdVNT/tcf8w7sN/eoK
	gLD2i/+p0FhiA0dr6/NcJYgMdGft4KzaZqjvB0mZXFV+jq9xskTSAMGq80Iqlvo=
X-Google-Smtp-Source: AGHT+IHGJbiYdPGAOik3b0q453OqmhasRdolfsh4w7C2mGJ7W9CIVGO6coPJsDwV//pbc/762BGskg==
X-Received: by 2002:a17:902:e842:b0:1e0:188c:ad4f with SMTP id t2-20020a170902e84200b001e0188cad4fmr5797580plg.26.1711525496525;
        Wed, 27 Mar 2024 00:44:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e852:b0:1e0:b04d:641e with SMTP id
 t18-20020a170902e85200b001e0b04d641els2666842plg.1.-pod-prod-00-us; Wed, 27
 Mar 2024 00:44:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU7qeZLO+UXW9XVgTyjUUzecZQFcaGRc6v7jG3uroaBm7WeU6uiHVlHLiy14CBH9fqvcJVxpAvwDq3XfwYRveC8/511ezMunYbxiikmh4M7nyZJAwc=
X-Received: by 2002:a17:902:ea11:b0:1e0:185d:a73 with SMTP id s17-20020a170902ea1100b001e0185d0a73mr5497494plg.9.1711525495270;
        Wed, 27 Mar 2024 00:44:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711525495; cv=none;
        d=google.com; s=arc-20160816;
        b=ARRilR1jCAc7IhFQfJJpC6fkWeqdWB+RkT0B4IBAki+dRFjbm25gWMR31EBGMGO8Fi
         +236v7yD0bXT/ymw6gcBaDkaNXOPixcmiQ7EyqUonX6RPVSfK5/Qw66Mn76oPDSU77ib
         qC1Uqjubx3/IRRc6SZkfjhfSiK5EEQ+vYH7eyQ7wkOa131+TB24e/YfzIfWVMVbgdHPQ
         hfTd0TSkAXcThLmF9kA5iXpg7uech5Ef0POw6p2SKJj3BezLynqmsPAymZSUiP7RUMOl
         +aY/ygRlyCeH62Dp7+mTfuNRgWrQDHLDiEU36yIyXfo7dJ2vgfWCXreKSU4KWaM4914N
         9n7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QY3HLOfVVC65tl0eSUhsUEO/4NTS6NQKZYZT8QqXT2A=;
        fh=orh2zKSd7Im9a0GkvoikBkBBeYkDgaqhARTitOWa4z0=;
        b=nrb61EhMUIELwf2Ggs06BhqP+2LxRn+RLordi6Mln51KXG2RhTz08BiNiYEgSGv2OH
         ezZmQBb+ilIWVrciAM3uYmWQRTG4XhpLOzwAihkIcoSbgIhTwgusDf3R7zF8dZ5avoHe
         TVbbNnZOCWj15EUIY80z31kwMWmnIhqHl7iRq2zyxf+aPUKzgnVrbRiJLhD8k6Pcx/gd
         mc/LVnAQoArWV7DepcVcHAEHktSTV47r3pCiJD3HnU1vdEI6B3iSoDWN5DbOnDtgzsZ5
         HX+Tu5M4GhTZsz36GUGNIk0b0ibgUWJX4Mct9EAVnkTfVNO40fj704QANz+Vv4naDthm
         Ddgw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CIv7bUYu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id a4-20020a170902ecc400b001e094a6db88si8875509plh.43.2024.03.27.00.44.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 00:44:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3B136CE2562;
	Wed, 27 Mar 2024 07:44:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39F61C433F1;
	Wed, 27 Mar 2024 07:44:52 +0000 (UTC)
Date: Wed, 27 Mar 2024 08:44:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Norihiko Hama <norihiko.hama@alpsalpine.com>
Cc: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb-storage: Optimize scan delay more precisely
Message-ID: <2024032745-transfer-dazzler-2e15@gregkh>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=CIv7bUYu;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as
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

On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > Sorry, but module parameters are from the 1990's, we will not go back to that if at all possible as it's not easy to maintain and will not work properly for multiple devices.
> >
> > I can understand wanting something between 1 and 0 seconds, but adding yet-another-option isn't probably the best way, sorry.
> 1 second does not meet with performance requirement.

Who is requiring such a performance requirement?  The USB specification?
Or something else?

> I have no good idea except module parameter so that we can maintain backward compatibility but be configurable out of module.
> Do you have any other better solution?

How long do you exactly need to wait?  Why not figure out how long the
device takes and if it fails, slowly back off until the full time delay
happens and then you can abort?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024032745-transfer-dazzler-2e15%40gregkh.
