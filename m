Return-Path: <usb-storage+bncBCUJ7YGL3QFBBRHW6TVAKGQEO37Y3LI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id E730197998
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 14:38:29 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id a21sf1199416pgv.0
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 05:38:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566391108; cv=pass;
        d=google.com; s=arc-20160816;
        b=PcyW0/h5Tg+e9kaQY5LY7dYz9F+Ov/0w3QF8gzZp2lFFQSFuj9UvKDVyvplFv4MEOq
         V18v2tw16KiSE4k/N49Vm9+A2rgfjtBUtMu3DG10zpgYqz0Pp3a+zXV0AQqosyDNdv/L
         CuwSfc1F3WdpQhgdqoFFtAwQbYJDh3AVkGlr+aCXxGqVfkuvkHb5aB3fTjF+KcTpgz1F
         117NO1/bprBmsxsetK9iacbekTOwoyuqteRTT5FAL8VRi6H26iIBeVnrY+BkNZDNidJb
         XJaJv3p4quw7qzcHSse0sYTjNdMhIeTDIFezlw/PGe8l0JUagog34guMRLc9Z54r/ZHj
         /bvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XMR3SHfKtCGH8Cso4DRuryZ1mtG5S7Af6de9BEHdBo0=;
        b=I3FdaczFjEkVL+Pv2KT1e0yEzGunXeqMTxQK8j5FYSZCjt0lekwJeD2rv+lUQtec1E
         jGygB1jTjDR8lY5Te2M/aRZTHYxCrUUDOrnwCYVIHDvtzi0j2ZNC8wCW93QOsSXbS9RG
         l9O7Z20H5V2nAh0sJ1Jbnb6QCBOHlyw7GyctxwVHc4gt4L8pq8UYgIBt1mN1i3zsIO+H
         V6y5lpSNfe6JLGdW1FUoOzz2a9omzHh67+TvMQEN2PmCKT9leD2gcMcm0K/TJGrqT6ON
         PkT+5CNfoiZ+Kda0ePtXPL0Gqf2XUQ5uA+iXhRi0X3zyK2EqoUCOUF0BDjIe956nHxTt
         xcDQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YvNB0DEX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XMR3SHfKtCGH8Cso4DRuryZ1mtG5S7Af6de9BEHdBo0=;
        b=I2MtljiPnJNOASwBcJ3/dV0Jrp4ikKnNHzuBLDYgNp/lfyInOF1F8U556uFS2Qq+XV
         aKJHy81G4Jo9h/JBnaF66pCrGFnWRKVZxwxcijPXAz7XoH7KDHjQRh8SrWQwOrqp+y3y
         6T6c8mWa68FSwoUuwbS7RQX32O5N6UviCLISc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XMR3SHfKtCGH8Cso4DRuryZ1mtG5S7Af6de9BEHdBo0=;
        b=LWgHj4nT/NH4guEnc02TbyNIEHtcT0i3MvOj+BuKd/b7wDjunr/9GNcWpZMtK1tCq+
         6ehBMoJ097CEMRR7yJB09epB3aCTzTjkg4GO0r5BJCGsiQ6odIuTrFfCV8IP8tz/qqRf
         8EJ3VIyCTPlaE+E/Ao9TAhzzPDcHmC8/2V44aXj6iYVuuOX3bL3XzG1atAeWphMXgnov
         fJ69TRC13G8m3u+46BbPQSpnQ7enw81I4G3a59+uAiRP1Qhm/xr4Hz52/f89vz2/tWxC
         bCguWdQREsQlZeb4s1rDQv96jnanbffOXy8ZaqfOAZZiyC6581/PLThz7NMZncnVkhUL
         0yKA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXvWaraq6UubSXyu8vzlLvU/Y6ldkFrQijtIG1rIrdDY8HtGXY0
	HvM/kwGiTthhA1DK/a9VySv1Uw==
X-Google-Smtp-Source: APXvYqwtsh4niuSFO02x7tSsQVx8k2y3y8tpll2ug3kcgO4iWm/dBLZEWIvrVTlbv8/hwEvcOzbVCw==
X-Received: by 2002:a17:902:fe93:: with SMTP id x19mr28122271plm.307.1566391108563;
        Wed, 21 Aug 2019 05:38:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:9e81:: with SMTP id p1ls596276pfq.2.gmail; Wed, 21 Aug
 2019 05:38:28 -0700 (PDT)
X-Received: by 2002:a65:5b8e:: with SMTP id i14mr28905605pgr.188.1566391108101;
        Wed, 21 Aug 2019 05:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566391108; cv=none;
        d=google.com; s=arc-20160816;
        b=Ca/2OGYdyLmiNav/QZuNX5dK2OBIbJ9L4k3B5sAN1tDpyrLc0BGdDEmckMJ4x3GYZv
         8hJjprI0VgYitJ5bAKaayjCYtlOa2yayCqCLd7oeWRBLRj5nWFFqR1UnD0fZwY9Q/3f2
         0xPTsPaaZRz0YspJ30NCNlTV1QUhGKN7WudaEtvbEiKL1QmEiCzSsvMIHseevOJt4upN
         mGge/7m7kVxHf9UJvQx5Trby5GQ9+cN/W4ybPncSobdZkCVgz0sIqP0T29mr9+fJcCZf
         e2nqfn0Re44Tnzwj0NwW/KoOuOyUFhPdeOzWpLEuxFzt9Oymxy38YUDGOno7p6m8704a
         xhDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=i/AbqASbR8M/X+LqosoB4jKjxiAstWeekcRz1GCx9ik=;
        b=sF1qapxSIZSXYqxeNlan25/8Out0/SsPBofgZODFTdSj3zttLJ9+s+8tYzkP1PktEw
         +2yjS4L1v1Sm91h7nWT0lSl1ndKYojVouXQXbBilxA51dBC6VbJbZX96+vITUXt2QY7P
         dbDnbfJhY1tuRsgH3wn/j1+MNL9ekkdQPQ692bB8YTeacvkYskzRzald0RdEeXY2Khxe
         horweVQBenIIZFKpjjdNcQGRNiRDejF4EGt//OUurZ0AfkEbf6BR8wTEWWHsU3FciqN5
         uZ8qBc88ngcTk9/kSRLCqnzAWNgkdBUqMqvHHd7AjwrXxVxLqwPdVGyKbKLh25+AJnt4
         wtFA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YvNB0DEX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id i187si15597664pfe.21.2019.08.21.05.38.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 05:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [12.166.174.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C0FC32089E;
	Wed, 21 Aug 2019 12:38:27 +0000 (UTC)
Date: Wed, 21 Aug 2019 05:38:27 -0700
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
Subject: [usb-storage] Re: [PATCH v3 10/11] RFC: usb-storage: export symbols
 in USB_STORAGE namespace
Message-ID: <20190821123827.GB4059@kroah.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-11-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-11-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YvNB0DEX;       spf=pass
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

On Wed, Aug 21, 2019 at 12:49:25PM +0100, Matthias Maennich wrote:
> Modules using these symbols are required to explicitly import the
> namespace. This patch was generated with the following steps and serves
> as a reference to use the symbol namespace feature:
> 
>  1) Define DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
>  2) make  (see warnings during modpost about missing imports)
>  3) make nsdeps
> 
> Instead of a DEFAULT_SYMBOL_NAMESPACE definition, the EXPORT_SYMBOL_NS
> variants can be used to explicitly specify the namespace. The advantage
> of the method used here is that newly added symbols are automatically
> exported and existing ones are exported without touching their
> respective EXPORT_SYMBOL macro expansion.
> 
> Signed-off-by: Matthias Maennich <maennich@google.com>

This looks good to me.  This can be included with the rest of this
series when/if it goes through the kbuild or module tree:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Actually, which tree will this be going through?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821123827.GB4059%40kroah.com.
