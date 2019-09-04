Return-Path: <usb-storage+bncBDT33UHK6EMBBVGGX7VQKGQEL2AMVQI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D3A867D
	for <lists+usb-storage@lfdr.de>; Wed,  4 Sep 2019 18:16:21 +0200 (CEST)
Received: by mail-lj1-x245.google.com with SMTP id u14sf1063212lja.12
        for <lists+usb-storage@lfdr.de>; Wed, 04 Sep 2019 09:16:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567613781; cv=pass;
        d=google.com; s=arc-20160816;
        b=O03mNah8Fady0mBbjbf6Yg8QN0Qlt3p+p7y2WyzbMo56Kg7G17DQMFAVlVb4OlnVT5
         ID5qci2UipCnexuKsU5fi5PlXNRlo97bC3ql21dxAjlWGYc5ovodE7TPC+tOr7vt/gul
         c2UG1hhAh33koAHHq+Iz0U8YX5LWjsHanOS4mTi2SLO6Kz6Ed34cC2DxGNnPllCdmjWF
         1yy7T5j1QOS00u0Qw3G9DG6pZddQgIfm9G4Pg9KTCJ0/T6kP5gj5MGGr/wE196ih+WXS
         hgBueISh0UOAHsTWyc/5vwnhoGdqHGRkSYuPRKrq63f1mQUFtDK6aIICquMyh541ktLE
         XQtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Ah264upmT9B57VnfL45OSiqaSmMGc9wTnZgCOOn3UCM=;
        b=Y8TvPwLvXQyGnXyqRDmT148mtMosEBhTtHW6syruJxBUXFq6x3DK1NLoTl3PuBjlOj
         4KrzNr3yh5q7BLfaAc2axyvaSa0m/sIRNH2joxj2TveRYruXRaoY5KvKKwdP0ptClK9C
         Ee7VI9Klr33bfoYo+6o9txWUnN6sWhEidhojitUobj5aCz+E2fghQFNPChXr67oTWAg4
         uldLLkvYm6u6Dn+1waMGUrsMj4es5wo1dpnHJRTsKJz5voUCPXD/B7sQAT6WpGmZPdiA
         IhfmSrTjUgaMf+PCxgkjYFpwB0AKEtRhufNc3WbvBq+86TVkzHkf3TAWbeA2jVg1A6iq
         hVZA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=TUlK0rc1;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.65 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ah264upmT9B57VnfL45OSiqaSmMGc9wTnZgCOOn3UCM=;
        b=khZWUxZ03GyDsb3VxcEH5/idNNK2/kC/ISnj0CtqUOiqM1os7iJ/kNH8wz+taMdIQ9
         7o6UEvRPUiKyrhP7JcVYuKUckdUfSitlxZY+Xp3SQOuXdbIXC+WOzfL2F2VVsJD31gS/
         SIsVW3bsGXGy5JgTcMZKPBaH5dq+/AVtpwXss=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ah264upmT9B57VnfL45OSiqaSmMGc9wTnZgCOOn3UCM=;
        b=Y60+8/4reX8nGMRBkcQgzp9qM2x7xZJDCdl952Q8CsoiCqH1Ev/CwbDKXMIcF5+1K1
         12aPkzIBuRENyZLzdjvl6WZ1+N+/VW1YBAWzCD+Gv9UachP3l7l4CKIACBS7qEXovDPE
         GqPMe3IFfWRWkRW1fbjjTtVNOtlHa3hFTJqDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ah264upmT9B57VnfL45OSiqaSmMGc9wTnZgCOOn3UCM=;
        b=WI9ykQLM+OxDFLhJTsPegXI7hpl0jKInfWwkrD5mT0KiorCL4CU9I9wCenoOnZ928/
         ciYxf/3BjAUX/bE0PaUrVj3KBn4ilU7FBV61UWI0b4fo/VjcqkBEnkTI834Gmz2GtPk4
         4W0j3ymEDpiACwCofQsA66JCok2SCPjuxOFRvvHKBgd/oPGkcLL9z01H8K/CfWK2olNy
         rs+PwJRfo5NaS/Fhcil+5fmSUoUCAQfW86c1DGkOYuSBbWlGsVNrsNhA8uXGZ37kECxg
         KgKzBKPdKtBCtXt/8VG7AyiCe35RpGdV9Q5m7o63wXP0GzCYI34QMiqY29MHV75Us1Qv
         dRPQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWv+Ai8VN6pRACEbHbQpMwaRX2mI/yL7iu0f8cYSXoLee1AyQoh
	lmTfW5i1T8j854TbVNwUvtTd2A==
X-Google-Smtp-Source: APXvYqwCTvY5+L/IVT26v85p2eZPyZ7OmgwYZBN0m+fSqaBc4rql7Qwigr5ot+CzL4NQMzoOoKbtuQ==
X-Received: by 2002:a19:117:: with SMTP id 23mr18353918lfb.115.1567613780844;
        Wed, 04 Sep 2019 09:16:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac2:443c:: with SMTP id w28ls1251596lfl.16.gmail; Wed, 04
 Sep 2019 09:16:19 -0700 (PDT)
X-Received: by 2002:a19:cc15:: with SMTP id c21mr24407100lfg.64.1567613779476;
        Wed, 04 Sep 2019 09:16:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567613779; cv=none;
        d=google.com; s=arc-20160816;
        b=DeNyaiXRElpsAzZuDRm1PKxt6/mXKPvz1gzKHyM186vSsDlj7ihlI/JRmLJE8CofyO
         WMqYEWpKrxMzxTqAb+P90HTvK8CcqqoMWMQoL9flvbriCVmrMYkOaFhNPFCn7q3/reG+
         YCgTTgjneRMY7ZB2niGd01CNBSWbMmKVCZ/60oT9mkE+qfPTbh84rSuiud9IjmGoq1Mn
         /ZPfIGtk0RwX8asQeKyLKrnJr7T+HWbR6tH5AkiIa4nJVF/Yo8YqopDeNffEedAvogjJ
         6St3QQvnWDCwFGFQQNtIlukanzxPzW/0TU7a8yiSTlbpUjcJcw6owFTszMQE6KTJ2MVH
         QGDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3OkOI3j0Oo0CjA3trKCkMR2MwBR7d8kErbi/HKpfcyM=;
        b=JoHgW6tf8kVS4WFBhl/+BIR/jIFoso0u3zNDQYDRlWpSMaTu5MK7kslq56Rt5dut6/
         E4z6Y4CV56IK9scmSmt010kOfNqKrmIyX74qCpFi+gKfuiQ4zFuUDuXhsAoZ7REq5fzE
         s+bym4/DN7G7TkmmCznIuJV//UWQuUqcmd3vfzj0U5U6x1Jl6G9NZgTJdPLcMtM5HvV4
         sbbKWanMWT8y2ONjpuAmORcVqTbKuazTBBTtmIkQFL8rceZutd0EHUB4fakgKhFZ7QRE
         G5Jig0NZDch3ye9i2ZnEs/BhoLF4R0jfU0mTuCykW9rT7PJYRmTGW0P07GGAUMD+VR0n
         /eMg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=TUlK0rc1;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.65 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id s4sor7662234ljm.21.2019.09.04.09.16.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 04 Sep 2019 09:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a2e:9ad4:: with SMTP id p20mr24178237ljj.49.1567613778648;
 Wed, 04 Sep 2019 09:16:18 -0700 (PDT)
MIME-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com> <20190903161045.GA22754@roeck-us.net>
 <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com> <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net>
In-Reply-To: <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net>
From: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Date: Wed, 4 Sep 2019 09:16:07 -0700
Message-ID: <CAA6KcBBeP9xYbVws4=RMFNA4kyrodE-R3mifhbkee-Q+jFRcoQ@mail.gmail.com>
Subject: Re: [usb-storage] Re: [PATCH v4 12/12] RFC: watchdog: export core
 symbols in WATCHDOG_CORE namespace
To: Guenter Roeck <linux@roeck-us.net>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Matthias Maennich <maennich@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"Cc: Android Kernel" <kernel-team@android.com>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jessica Yu <jeyu@kernel.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Lucas De Marchi <lucas.de.marchi@gmail.com>, maco@android.com, 
	sspatil@google.com, Will Deacon <will@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-modules@vger.kernel.org, 
	linux-usb <linux-usb@vger.kernel.org>, 
	USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mdharm-usb@one-eyed-alien.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@one-eyed-alien.net header.s=google header.b=TUlK0rc1;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates
 209.85.220.65 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
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

On Wed, Sep 4, 2019 at 5:12 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
> Note that I don't object to the patch set in general. There may be symbols
> which only need be exported in the context of a single subsystem or even
> driver (if a driver consists of more than one module). For example, a mfd
> driver may export symbols which should only be called by its client drivers.
> In such a situation, it may well be beneficial to limit the use of exported
> symbols.

I can appreciate this benefit.

> I am not sure what good that does in practice (if I understand correctly,
> a driver only has to declare that it wants to use a restricted use symbol
> if it wants to use it), but that is a different question.

I think this question implies that you are coming from the perspective
of "security" or wanting to restrict access to the underlying
functions, rather than wanting to clean-up the way symbols are handled
for manageability / maintainability purposes (which is the goal, as I
understand it).

HOWEVER, I have one question:  If these patches are included, and
someone wants to introduce a bit of code which needs to use two
symbols from different namespaces but with the same name, can that be
done?  That is, if driver A has symbol 'foo' and driver B has symbol
'foo' (both in their respective namespaces), and driver C wants to use
A.foo and B.foo, can that be supported?

Matt


-- 
Matthew Dharm
Former Maintainer, USB Mass Storage driver for Linux

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAA6KcBBeP9xYbVws4%3DRMFNA4kyrodE-R3mifhbkee-Q%2BjFRcoQ%40mail.gmail.com.
