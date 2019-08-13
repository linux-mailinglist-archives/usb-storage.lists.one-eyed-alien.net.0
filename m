Return-Path: <usb-storage+bncBCUJ7YGL3QFBB3P4ZPVAKGQEWOQN2TY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 666F68C044
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 20:16:15 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id 21sf68920201pfu.9
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 11:16:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565720174; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q0y0wi1fZxgExILXfKaoBnZyTdYuNNMFIZP+vWRxfsFtyCdc8/15IB/KLLFtSC64Bz
         ueOfpIS1iL1egI7rVUVYBTZ/qQyYWl9gCBAmqkmlRG6/C9hZ2yHIenCRVWHdq1yIP5ch
         LJLXdq7hTMAIdKEI1eoC8PsQL3zv8/xDOGOXxw5cBxzSZU0Z9HsipQAhU4Xi97YYclHm
         ZsT9JIJwwV3LR7TJNuVba5y1R9/X+apneLFNjy+N67hbZepnqsJHD56TczhVRMChlL+U
         AsUS0l7z5xBCMkcq9m3oB/5n51nE3avJPB7wQQBR0FrBevGcyRhGeeEoo9rNtmxTjxv3
         B19g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6YaODtZBaaOwCfdP+0QKhmS5adL12xrds1dh2ZZs+/k=;
        b=yfzPyTZoScShQ9OR2ez3yJncjZgzU6ii8Tu1QgXzvQr87hk+fjlPXsMMt9u0ko67jF
         YjgotEDfw5xCyHe8YN6jZLNpn0ur9iol8um1sZdOS1iYHWPR/rRN/zXfiOgpKgMJyFDQ
         a1SbMTMpX+HRvpoYDHtsvR2MaH5IUh48EGWkEAqIIz3Yy0DzTaBqvIob/Bx7dtyci6WX
         FKS1rcLWQY+03m82f+BXqQgjRzEkj9XTPlG1qA1fmSyrscORgV+nheDNO+lW9J09ruJ8
         0ES1YzdWqU7e7qxMS/oLvVl4KKiTh0m5KSZGyhCf1dZklOZbx55z5mXTc6UTJWDxDvF9
         mF0A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="S5ZA/7/Q";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6YaODtZBaaOwCfdP+0QKhmS5adL12xrds1dh2ZZs+/k=;
        b=liBpkMNvNb3KAKHqRsDqRtvzIiJcEr8gSw/AcThZf77OCbxBlrKK5WJZKiLEiDpqd2
         oxluxEWdEmwHMLfNm5S/czvQTCo/4Le/Kac1hUBE6tP0y/uYgAN0aIYbA0THuue911NB
         l5udGbv6YijzdY9CoZCp5vEdT6O9VnWLz2ZqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6YaODtZBaaOwCfdP+0QKhmS5adL12xrds1dh2ZZs+/k=;
        b=luHkHdEeE9oKl6po6/FwNsAR36S/0hzSLfttA4J+o8lrK0EZ6nVInng7W0B3ybB09i
         SEQQzN1m3zmHfygNMkYLg47b2N99EDopPifpsWyOBOFs2QPvORwKgT9LdpizQUe8Zc2R
         /8hmZbLnjEu49Z2DsKXBkcRYRvQzMQFPVe2IVJNL1eWrmbNBNE7s/FHEpkpfyBOrY/Dp
         gAO2H79YaXJxSMCaLOn9Vd19siccywUn0qON0LvihcoWsF6OqAp9itF0ksxouhn6wj8E
         McYtNvnBD1WcH8MmPjxLFYwUE9OZqC5JECtU+aWpjwjJDMSd6Fnnd5iKRQYa/L1u5EEL
         fAHw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVOEQW2F6HfW0hOdmViXs+xcZiiCCiaDSNDMPA1T5wEWJTN+Gab
	4wUc3oZFt1rH6jPfijD+089oWA==
X-Google-Smtp-Source: APXvYqy2WK03ai5eqbGJ1eqWisu7BdadjI+ZFwnwBhjrb1A+zh2iQXE1L9cPAPhX0iv1PPI0dfB2ZQ==
X-Received: by 2002:a65:64c5:: with SMTP id t5mr36554526pgv.168.1565720173856;
        Tue, 13 Aug 2019 11:16:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:2f02:: with SMTP id v2ls25322543pfv.0.gmail; Tue, 13 Aug
 2019 11:16:13 -0700 (PDT)
X-Received: by 2002:a63:ea50:: with SMTP id l16mr36211804pgk.160.1565720173228;
        Tue, 13 Aug 2019 11:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565720173; cv=none;
        d=google.com; s=arc-20160816;
        b=n80f83viaVTZwFc4BTMKQ3lskh69uNPEIQfn+pQ9tg/PeLQQdEVsJDpm5LPlzNLwYF
         4NmUekjkTjPeJsxPF6k01aAZaePPvuTQekL8JK3xol4Qgs2wk6GEn9eFCLWwJNU95XRc
         85GLe796W3t9QUUAe204aRnJrC09YRrIjdfZFMOjrlakVBbNghlhLdCMTIO/oKim3hIC
         NifehikJXrp8vsiGmtlesEteQxe091vUShnUXht863gNEv67lXhF+OO7uNlxSuVwmDWD
         bl0Gv9gaUBZgSFmKyVgEatETSc54GwX1gIyiJ8iPwbB6c8DmtGgeTVU5Pq/3wqBYYZPa
         8x/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3AJ/zymSj/QRl72e/rPEdCd/1I8706R1ZTDIZQ6FtpE=;
        b=nnearR35cFSALWvge7WdlHukiU6IsI+bU6K3z8ByFkpgav40oXvvXMbOPh/RhT3pCM
         xCf4cMdvtUlW7fCjGYDd36+g8sxdkNqvNAOn9EjQnAe2xHj0qFGM5BUAE8bQDOixcFDl
         QLg7Xb4lCdZXtZEWiqnTpuQATVfXDuGuQeY8aL/ZM6lkzRgSgdlG3hTc98AVB/aJjuvx
         PpfRFCs9M88YeUkEehYFb3Dve5Kj9rr5IrUtn3gfRPoyZqg/hdP89symCdHQCVhCkZzJ
         LuumpynNNS1jW947Co48h/nF4t4izGCAoz6fx1cLR3akQDFOF3MrKnic91KVg2z/LZ1Q
         WDEQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="S5ZA/7/Q";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id y22si59025719plp.192.2019.08.13.11.16.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 11:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7306320665;
	Tue, 13 Aug 2019 18:16:12 +0000 (UTC)
Date: Tue, 13 Aug 2019 20:16:10 +0200
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
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Subject: [usb-storage] Re: [PATCH v2 06/10] export: allow definition default
 namespaces in Makefiles or sources
Message-ID: <20190813181610.GC2378@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-7-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-7-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="S5ZA/7/Q";       spf=pass
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

On Tue, Aug 13, 2019 at 01:17:03PM +0100, Matthias Maennich wrote:
> To avoid excessive usage of EXPORT_SYMBOL_NS(sym, MY_NAMESPACE), where
> MY_NAMESPACE will always be the namespace we are exporting to, allow
> exporting all definitions of EXPORT_SYMBOL() and friends by defining
> DEFAULT_SYMBOL_NAMESPACE.
> 
> For example, to export all symbols defined in usb-common into the
> namespace USB_COMMON, add a line like this to drivers/usb/common/Makefile:
> 
>   ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE=USB_COMMON

I thought we were trying to get away from cflags :(

> 
> That is equivalent to changing all EXPORT_SYMBOL(sym) definitions to
> EXPORT_SYMBOL_NS(sym, USB_COMMON). Subsequently all symbol namespaces
> functionality will apply.
> 
> Another way of making use of this feature is to define the namespace
> within source or header files similar to how TRACE_SYSTEM defines are
> used:
>   #undef DEFAULT_SYMBOL_NAMESPACE
>   #define DEFAULT_SYMBOL_NAMESPACE USB_COMMON
> 
> Please note that, as opposed to TRACE_SYSTEM, DEFAULT_SYMBOL_NAMESPACE
> has to be defined before including include/linux/export.h.
> 
> If DEFAULT_SYMBOL_NAMESPACE is defined, a symbol can still be exported
> to another namespace by using EXPORT_SYMBOL_NS() and friends with
> explicitly specifying the namespace.

Ok, good, hopefully the cflags stuff will not be the default for people.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813181610.GC2378%40kroah.com.
