Return-Path: <usb-storage+bncBCUJ7YGL3QFBBQP5ZPVAKGQE6YKL4RY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A7F8C055
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 20:17:38 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id 21sf68923231pfu.9
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 11:17:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565720257; cv=pass;
        d=google.com; s=arc-20160816;
        b=rKcXXAvqcRdVlf/XQHaKRb583udAp/6PMnJ9BTK/zHY8+rfyvcDkXU4+4ULLYq3JZM
         G31jAz2GVPVK4WEfe2x9aR9Rq4/aAosefvuU/KkDNs0RlHUSApjl3OrORvXllXUkCDUT
         ceWmPCX9Y0EMub38VvHCVbDZuRXiHkAehq7zK7Y1VGx34/9XUwyqTBF3MBcADqGii+MF
         6oT8ZaUS3paCupDaKKzBkumKwEVcpQ2tkaoy0/M3own6j3VBWqUJ0VBsdrTUpXQcRvvN
         anglyGqiKcQmf2G1Z4F3U9QzihTNe/AcmX1ziBrYKpkicjbiBEWHtD4spliASAx7KGV2
         nhbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mLC2YfeX3omhSIgtw97zbM5WN3Dw+MZn1BJak0N5YEY=;
        b=eWhuyOAzDh8AH6UJLx9dDw3wirIXrs2HlacbsCKZev6/SvY9q5vxcMKG1cmokeELs4
         m85pQTSIGvDouvG0ymTazFObLdSOkknizSXWIgexyWZZOK64tkElShWeZ8SsgaIu1vih
         W34GFSU6Bftzw8wLQBclXM2VWPw2qqvhqy67DUL599OlnSqQupb53yntueu1i0VIdjz+
         AbaSEfReieFeblna6J5/7y20fzrPEAkYti6prSODD1n6E2obfmtNh+tj7E5OjkIiUuqt
         ZZbhsZry3Rm1eCEWDWVoVg+rp7lYQZ8m0ePBjCVkPsE+1upPuzgX4ZFJjNMD044r/ISB
         0WRQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BRGQXroQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mLC2YfeX3omhSIgtw97zbM5WN3Dw+MZn1BJak0N5YEY=;
        b=JeZYxAx0IasDEYVlzq2ABP772k+BKMRWeppJZoHPYBx9ZyhrjakRys0aBvoX2EI5ch
         H+Aey1wi3oFPqxtED9VxaNdLEdH86+0vC67DCMl7Vya+P5oCkpViCzH1HN5r2NUps9LK
         Go0QCYooRpv3DjwpEzpjFkI9+fhkoS+Nyd+jo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mLC2YfeX3omhSIgtw97zbM5WN3Dw+MZn1BJak0N5YEY=;
        b=fVJHIH/oPk/uuYq00+4tK+sTRJkf4rAnW8XZR9dMT4PsjJzOE5a9yqk/mCe+IuVXfD
         XsCRhTwFBkFiikpCDUsMA/14gL6MRtut2cbAlkvcLuu0+2NGBjhD4SdN0VVfxbv9MlFN
         jV0njM1g+kJztdELbzIxIgomfgkm5fJBJXn3kbbYHbCI9LLjZbnU2rJhu0dpNv6O9003
         cd3/yfcpesl9DRT3HyewY56t9B2tpl+2T3iB4MrxIYtk5zFrjoQpOXK4YmcYT9XXiQtj
         cWKmHL5bR6TAgTe79fFctU8eqjx+jmzG7S0adFvJlSIOWNx3YmekJOw3HCoe6xpQnNgR
         G7EA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUfocAdvRL06toTtaerS0dy9wmTbejPaW7L4+GSmIoaijcHAuc7
	bOncBqeSYF9uTXAKY19CVYNlQw==
X-Google-Smtp-Source: APXvYqzNwpYRKfO39n2fbQtYIY7dPww1jZBbU7saQKR7Ct7EZouKGSSSlj5HTEA0cytJMaqelTmu9g==
X-Received: by 2002:a17:90a:77c9:: with SMTP id e9mr3213063pjs.141.1565720257106;
        Tue, 13 Aug 2019 11:17:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:2acb:: with SMTP id j69ls29787975plb.9.gmail; Tue,
 13 Aug 2019 11:17:36 -0700 (PDT)
X-Received: by 2002:a17:902:a586:: with SMTP id az6mr9564206plb.298.1565720256742;
        Tue, 13 Aug 2019 11:17:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565720256; cv=none;
        d=google.com; s=arc-20160816;
        b=mbI99s7iRfKfdc9f/lLhgcTiz4tuvoZwysWF0gZI3WrpZWS02v7Cwe6DupUTgdFYMm
         FUi7XRQGrjB0ZKqfyRUtjgtYCfy0ePHzZfmm6F8hG5xo73Gq7fuO7wD53UbXtPEJLMVP
         BaDrp71lc6wmCW3p7XWNp2XqH/8/v//o7CxlRenmlP8N7oAQZpgDt3OLQaKSgqcXNnZU
         Xue6vznKXYqXdZVypjml8h2EOF8cSPa7cQSpjYNjkOAALTRoRXHUKqNymVAR6mQUmF22
         v/mYvYkCX9D7J5Ok1RJn+L0TVrBGTInRHFlPuaoRS4qnGq4C+lG6GDlYJVxDppxbzA6U
         h1Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HyxHZ/T1aDqEs5WPBl96wQAfbXjL1SgYe1M4azMb1mg=;
        b=0aX+NyaqMdjz1vBR4EbI7V10Nk/ixIGck6eWvE11n5vvRbWgQohP1pv5flJ8RSLepi
         UdDIb+6rYzZIL+jR64mitCPGNiriCCfHDHTBQqup39VOTiFjUwwbhlo0RFqA6eHwUF+Z
         Y3f1jqbWhq7Pwn/mTiHwjVcVkCQAgoqXShxG12HTR/yQ90gMNqtukDBq5ubEkyvst5jQ
         p/tQ40gmQU5AT4tbvSg18A73q6cNKL7yZYWc0rJoYttqlJ5um3GLX+j2xMPUMNDuJsu1
         5gQ9liOh8gCMxaRfGkxzlbZB9ALEkQFCk1oljXwRa3AMKWWJwB4D/+OZ5Pk+akt2hlGA
         RrZw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BRGQXroQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id ay19si1407162pjb.44.2019.08.13.11.17.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 11:17:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0162120665;
	Tue, 13 Aug 2019 18:17:36 +0000 (UTC)
Date: Tue, 13 Aug 2019 20:17:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, maco@android.com, kernel-team@android.com,
	arnd@arndb.de, geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sboyd@codeaurora.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Johannes Weiner <hannes@cmpxchg.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	David Howells <dhowells@redhat.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Adrian Reber <adrian@lisas.de>, Richard Guy Briggs <rgb@redhat.com>
Subject: [usb-storage] Re: [PATCH v2 05/10] module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
Message-ID: <20190813181734.GE2378@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-6-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-6-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BRGQXroQ;       spf=pass
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

On Tue, Aug 13, 2019 at 01:17:02PM +0100, Matthias Maennich wrote:
> If MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is enabled (default=n), the
> requirement for modules to import all namespaces that are used by
> the module is relaxed.
> 
> Enabling this option effectively allows (invalid) modules to be loaded
> while only a warning is emitted.
> 
> Disabling this option keeps the enforcement at module loading time and
> loading is denied if the module's imports are not satisfactory.
> 
> Reviewed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  init/Kconfig    | 14 ++++++++++++++
>  kernel/module.c | 11 +++++++++--
>  2 files changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index bd7d650d4a99..b3373334cdf1 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -2119,6 +2119,20 @@ config MODULE_COMPRESS_XZ
>  
>  endchoice
>  
> +config MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
> +	bool "Allow loading of modules with missing namespace imports"
> +	default n

the default for config options is always N, no need to list it here.

> +	help
> +	  Symbols exported with EXPORT_SYMBOL_NS*() are considered exported in
> +	  a namespace. A module that makes use of a symbol exported with such a
> +	  namespace is required to import the namespace via MODULE_IMPORT_NS().
> +	  This option relaxes this requirement when loading a module. While
> +	  technically there is no reason to enforce correct namespace imports,
> +	  it creates consistency between symbols defining namespaces and users
> +	  importing namespaces they make use of.
> +
> +	  If unsure, say N.
> +
>  config TRIM_UNUSED_KSYMS
>  	bool "Trim unused exported kernel symbols"
>  	depends on MODULES && !UNUSED_SYMBOLS
> diff --git a/kernel/module.c b/kernel/module.c
> index 57e8253f2251..7c934aaae2d3 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -1408,9 +1408,16 @@ static int verify_namespace_is_imported(const struct load_info *info,
>  			imported_namespace = get_next_modinfo(
>  				info, "import_ns", imported_namespace);
>  		}
> -		pr_err("%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
> -		       mod->name, kernel_symbol_name(sym), namespace);
> +#ifdef CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
> +		pr_warn(
> +#else
> +		pr_err(
> +#endif
> +			"%s: module uses symbol (%s) from namespace %s, but does not import it.\n",
> +			mod->name, kernel_symbol_name(sym), namespace);
> +#ifndef CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
>  		return -EINVAL;
> +#endif

This #ifdef mess is a hack, but oh well :)

If you drop the above default line, feel free to add:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813181734.GE2378%40kroah.com.
