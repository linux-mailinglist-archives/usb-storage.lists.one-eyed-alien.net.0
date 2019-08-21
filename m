Return-Path: <usb-storage+bncBCUJ7YGL3QFBBAPW6TVAKGQEE4BYSZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF8497990
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 14:37:23 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id m17sf1169736pgh.21
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 05:37:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566391042; cv=pass;
        d=google.com; s=arc-20160816;
        b=WWXR/H/FDoG9hZgx7lMKhNy3g4Vue6fWLtywk6HSmEhQREXPfPbAGDZdmmb16ogpFe
         nRldk2PecP/2puyIu1awB0JqlhdMQxmCtE6s5EyIT1AdvhkHuiIpKRh4ArWPfQj7sFk5
         s1WvfFNrxkE+54liSf+l2Sz7XRwjZSye8Ajc5c0UGMhl3cBrzExtJMpE6kMV95BfWWsv
         BZKnVXX6sHj9i0v2lieix2sAHVPtGv2CeVew0W8FzzWjf0NnBIf3AqrUQ1zN5DrqP/7E
         tFtsjLF+yxsL/qPRe9PaIqzb/+qpb4yLoV4ckEAyWKp7nETebKzOrgRPDCwV4u0HdHH8
         GSQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uQ738v4PPytbz64S1/w0OVic+GQPKS81eoXI7gl4qzQ=;
        b=Pharx9lIM9OBTGCrhnm1fUedQ3xQIRecupLAXJsa0rkiRgse3wfy4+o7o9AN+nuyqT
         /Tvyi+U2K73PIwJBTEXqjEF5pwYp79rgVOR/oQPj7Fl/lYpXj4chMfAhT1xOgZN6nBp3
         c/1ryRaXBS8xsYSGZCyVJc4vAiEBOIAIwQiFJUoobfDt9MzXbE3W1e6ZA6+/jgdCFHGB
         ruMr2ICh5S9SdgfN2WMBBlyJx0TmnD2aVszurx90lG25JHIKpCmRjW8/9QMa/l+HLFZ+
         MKa7xm5E772bbS4QNxkvAv4y0SrIiWI9lKKBxg1/U9MlTtKdqEOdm/cKG9Oim505TqjS
         lx2g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="1zvQJ/1p";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uQ738v4PPytbz64S1/w0OVic+GQPKS81eoXI7gl4qzQ=;
        b=U0DMakT9N+oWSHu5JvB19R3yNpLcEvQQ3Nh+31TDmsAA59xX2EOLtBII5usoCvD02F
         h2bdD25P/raMowR8kPGyfAwmCM+Jr/Q1JEsjNpzs+dQbXz4lyIMlBhLjrYOWhFW58Uo3
         xnZGHH4rJGD/z4ngs4o8jZDle/dKkB4Xiti1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uQ738v4PPytbz64S1/w0OVic+GQPKS81eoXI7gl4qzQ=;
        b=W/nZGVUe4Ilb5o98CQ489iViH6QsAYF/ywrrbNZi2Qf+aaKcuxPpdJae145afCP52S
         5BgHm+TeLB4IfMmxmEx82yHyuz+1O2BuwLS93s5Q3W0YFhiYnTdIWJ678P2pSgEcSP3r
         lpaG2HJCydLYU8cZZTUOOVTMtcEA2mdaBK5Dh4UZEsUwuTrRcxWZo7w663doFJknggoh
         zxifw0CFdfNZn+uoPaQJ0O4lr6OcAbJdTap2+weS/ecLjVe09DPofT321n/3T05v/caE
         58M192PqiLhdo8w5yqIWwxmxBvAfsjzOOPo1JvOA8xqa7zBjGwyO3fXwxtzjpxPmrK0+
         j7Gw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV0GXz6nj/WH7OfntFS6kiUuHZi2ex2I2ypFiRa0zCaMImB2LIp
	nvTLMJRt/MNnjobhdpGdQT/yrg==
X-Google-Smtp-Source: APXvYqxj6EyxgXtkawglXLl9JxN8a+O/XTOQLxlHP2sYHQdOgEUbuPQSLkdywaoJeHrHBzlIyqNxNQ==
X-Received: by 2002:a17:90a:7f85:: with SMTP id m5mr4999923pjl.78.1566391042099;
        Wed, 21 Aug 2019 05:37:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:3fcf:: with SMTP id m198ls496502pga.10.gmail; Wed, 21
 Aug 2019 05:37:21 -0700 (PDT)
X-Received: by 2002:a65:6552:: with SMTP id a18mr29710476pgw.208.1566391041615;
        Wed, 21 Aug 2019 05:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566391041; cv=none;
        d=google.com; s=arc-20160816;
        b=hQUS1YVjI1Zisf0b7b27RK8bi2AY4ACe5VvlpDOYE4Q8k3+6VdpoKL1yp5JX7U+nbH
         SjcucdxC6hFNvn3JNNxMKCUFGNxcmlVo64Dr5sal9C25X3Wb7HQw4ZLL34HnLV4FsMDf
         lZc7rDPyLJXEtylj1ycAncH3LyKq6w5Oz65NY+QsUilRZlg8GAOkK9MUV8viKemyVU8c
         j+9eumbufFqGBNRxNjFpI0ppX8L5jmTpc4pjORMi96mYM7IsbQauxH8PSoDJK1qCxQSu
         6sAOpwzLI79P5Fel8XkrqEtnGRIfJ1P4Tx0Y11n2V5IvYnmnzoEKSE1p1BCi1elA5MUk
         DtGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=shLAWQnnWGYgvgbh3FhU8rfEoWScoKuCsiHnUDYsckU=;
        b=TJ1csVuTVNUqJThuEsccoWyqebRvY/S7Gadk19Tyuy0UqJI7tRyBtQFTwtEuVnS4f2
         sBP21MKMh9dPomwc5akLZXF+qfblVlZ6cfnrRD0FPtZUbAWH+2RVB6Yi3QZNVRIijgQc
         jDGRBTQNeM3xeq99YmCRx9+AkwSOFQnp1bTS3ONaWqQ+y9P/ypvCJFn8xSLxx6dKT1Uo
         Ig95HoVWuEhZtEsfoJ+B3TrqJfDsaDd0j0PrdZFfCKn/gPerEcdhEel67XxB8QpdPusw
         aBYst4pKfmASCnfhIamCcPQQrn+VayFRqJFYZN0UIIHNTHChm6F8z4UjFPuxevQTzClH
         DCNg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="1zvQJ/1p";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id q2si14462807pll.378.2019.08.21.05.37.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 05:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [12.166.174.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A3C22089E;
	Wed, 21 Aug 2019 12:37:21 +0000 (UTC)
Date: Wed, 21 Aug 2019 05:37:20 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com,
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com,
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v3 09/11] usb-storage: remove single-use
 define for debugging
Message-ID: <20190821123720.GA4059@kroah.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-10-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-10-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="1zvQJ/1p";       spf=pass
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

On Wed, Aug 21, 2019 at 12:49:24PM +0100, Matthias Maennich wrote:
> USB_STORAGE was defined as "usb-storage: " and used in a single location
> as argument to printk. In order to be able to use the name
> 'USB_STORAGE', drop the definition and use the string directly for the
> printk call.
> 
> Signed-off-by: Matthias Maennich <maennich@google.com>

As you know, this patch is already in the usb-next tree, and will be in
the 5.4-rc1 merge.

But, as this series will end up going through a different tree than the
usb tree, here's my reviewed-by so that it can be included with the rest
of these patches:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821123720.GA4059%40kroah.com.
