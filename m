Return-Path: <usb-storage+bncBCUJ7YGL3QFBBC75ZPVAKGQEMAM6J7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6D48C04B
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 20:16:44 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id j9sf12926828pgk.20
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 11:16:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565720203; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZjOQuYC1yQP8YBVYwffbu4nZEldvIkIRpnW4BNuaVCPaN+6/w808dPhyP+7Kk/j/VO
         1Qr416zhu8ip1IYYWCAZtzxiX1KOpzaz41RNi2a6dDlJtYv7z+qA1THu/GRHB66haF1H
         CMSxma6RFQpU/kWNiTIbB1xJnnQQAdwSp/TkO9wIxpFu46u+Mkw2gL7rwyY4YgE88CNe
         QC+jMvv92xuxfPsvXsoLGUT0HTuZoisUy6gXWRdv53qYo7aC3cS4h4FKMFdqEZdbXyIH
         weuNoFKanubhlwHk3cMUopn4sIDuQPWfRumxa38yrAyoKsQrcwB4Bln5FEB8EZMRDAkm
         yxpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LpZ7OGye7abijstM74wKQ+dRPeMb40fQJWNGGF9jThI=;
        b=tyuni7ZRROzPtfY6g9sj2+EMLUq045h4zeBSRr8GI671JuXT+uqy747gkgqRzc1dg6
         epAgLQsvvk+84ZryIukaEn4EyDr6b/MbdkpuYaYQcNqfuohbh4ZhWAWek8i3i+MNmXIj
         jumO2mDVbNGuep8O3HYywx59nQiJKIYLPXBdHwbfMP8VbPFV+4nk5/josJ+PqSM5Z7c/
         fFILkm0zpGjF/Oswh/1aqI3yuYIR/mQQNSTMuHZX5QB54tQeULBUZfG97SIe/TIx91O4
         FuLUBh5RpYx85hUkXfTh11DZ0VDS6KBtwPS2HCq0rQ6t7E4gfRim37+YUYk73ufLyXbi
         NNPw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LvP+S7VM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LpZ7OGye7abijstM74wKQ+dRPeMb40fQJWNGGF9jThI=;
        b=jxGP9ibT1nd1Bs3CK6rZVYdBRt3rTqqypkS+OHzz3QFUScGQqulAJf1Hqv8bfJfLX4
         cY+Ga2wI9wRjZpaKhQNxB2nlogk7uDKxJUFcllB+Ec1z6iEgkWWmGzDTkk/ZaS1Qeot5
         ZAulFdFhBAdOo1c91xI4NuBFjWgBZSVdsALnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LpZ7OGye7abijstM74wKQ+dRPeMb40fQJWNGGF9jThI=;
        b=K77qaJdVWX9A+BSfnoSiPem6IQdcG2DO6JMatBidvNLjx4WiuPtTIfEgmydXWjGzdm
         RbRUyWr6rIBDL2Wz1y0kPrBG9LAAZR2KbkPR9kjMtNlfuHdVUP07ay4ESzNsH1WcUDdp
         o8DFDZ8kCM4NvfHOF2rJdGBqLK9ArOPfxcijyrlg7bM3IHRs2eYGDN5P0WGjZZVWsTUN
         MkY7Dxoakm1RSKDuqmCkQ6waTjl3pdozEJ0mHMt2Rt6Ha2kmPQ8U+m1Tce5kv0YM6IlR
         P2unJeYwRvKkZfqsRMAR1MqtxjHkZuneQOVDNy3MDVznz1Ns9d7SoCz0az74uy6jU4lU
         jHXA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUxbxKpXNKjoXyg+S6JuHUTMu2ViBi7wyhoqKz7tr70Mj2KYa6e
	BmjqVQ4tWYGvkPLuaMKU1SSoFA==
X-Google-Smtp-Source: APXvYqyw919lcSnAcyWzucECqkDxPlAxC6g7HnZbsPBDihSMOx6ivhrlrw59wOCO5WxKr6wWmbMWyA==
X-Received: by 2002:a17:90a:fe5:: with SMTP id 92mr3427843pjz.35.1565720203506;
        Tue, 13 Aug 2019 11:16:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:8996:: with SMTP id v22ls616392pjn.0.gmail; Tue, 13
 Aug 2019 11:16:43 -0700 (PDT)
X-Received: by 2002:a17:90a:b393:: with SMTP id e19mr3411768pjr.118.1565720203050;
        Tue, 13 Aug 2019 11:16:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565720203; cv=none;
        d=google.com; s=arc-20160816;
        b=woQoWwiiS5QIzqJGmTTHOB+VylK1CZd8CtfxIfYj/t012mek95EDXIW24WoDKj8JqH
         yhdEIMy4pETkdr9EkeQHsB4am8t5RIrN+s7W5DHieM4f8R4IZSoqeWDgmWIL7Vg28lGj
         2xMuLseXBkYRySyrJbEJpWG1ZKDzCt2+QSX8C8fLkFiniAuBhxqCShSnLnRfKWjbJYj0
         68fGoe5fce83cps+9EfqEy11ve28NMYsWw3HkpNMtar8Gw9lg0MfGEaZovQkS1AM/Yxi
         bHnSmDzNbjLIs5UgJDzp254xzbFvji7RDEHAVcCreKE6X2DEtvw90Iq7vx02JxO3Gab0
         Ff/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xMxjtb5I0tEe2j7Ez7KYWPkMi7QA+XcMpKu955DXcDM=;
        b=K3Fpmvu8ckwJzCQIMKk4kf3jToOzIOJZF4lEUltOBvCcC0CgK3ESeczzgApOa//8oh
         nGZ/fdFv1Z8FFP21LwxF3zOe5BDBI9+pdsb5NM0WzfKp+QYhvHRX4bjr5XBxL0A+yIUa
         PH2YCUlrZeVl0BLNp3NKx4BZbOhfmj4XBdFu+bf2ljelHwOEBU7BUnF5ck9e/QJyMLcJ
         2besfySvsDA4TbjxDApmW8CZLqcCvh7HmmMylsj/lzd7W8limh0NSAC+J+/feVtEaF62
         lzEY3QQ8hDKr6qu0DisPOAoIpgfINP9xfBeYOzgAEdl3F6EP2nd8rZMJRESS9PO8Jd+a
         Gxow==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LvP+S7VM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id c11si63136808pga.118.2019.08.13.11.16.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 11:16:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4810C20665;
	Tue, 13 Aug 2019 18:16:42 +0000 (UTC)
Date: Tue, 13 Aug 2019 20:16:40 +0200
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
Message-ID: <20190813181640.GD2378@kroah.com>
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
 header.i=@kernel.org header.s=default header.b=LvP+S7VM;       spf=pass
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
> 
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  include/linux/export.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/include/linux/export.h b/include/linux/export.h
> index 8e12e05444d1..1fb243abdbc4 100644
> --- a/include/linux/export.h
> +++ b/include/linux/export.h
> @@ -166,6 +166,12 @@ struct kernel_symbol {
>  #define __EXPORT_SYMBOL ___EXPORT_SYMBOL
>  #endif
>  
> +#ifdef DEFAULT_SYMBOL_NAMESPACE
> +#undef __EXPORT_SYMBOL
> +#define __EXPORT_SYMBOL(sym, sec)				\
> +	__EXPORT_SYMBOL_NS(sym, sec, DEFAULT_SYMBOL_NAMESPACE)
> +#endif
> +
>  #define EXPORT_SYMBOL(sym) __EXPORT_SYMBOL(sym, "")
>  #define EXPORT_SYMBOL_GPL(sym) __EXPORT_SYMBOL(sym, "_gpl")
>  #define EXPORT_SYMBOL_GPL_FUTURE(sym) __EXPORT_SYMBOL(sym, "_gpl_future")
> -- 
> 2.23.0.rc1.153.gdeed80330f-goog
> 

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813181640.GD2378%40kroah.com.
