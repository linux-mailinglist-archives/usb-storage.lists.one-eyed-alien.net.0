Return-Path: <usb-storage+bncBCUJ7YGL3QFBBM7BZLVAKGQELU3RMAA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A5C8B8E9
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 14:44:36 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d6sf62815729pls.17
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 05:44:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565700275; cv=pass;
        d=google.com; s=arc-20160816;
        b=XATQtPQWV0aWP2JuXllFaDVscN8BOTj7/dM+OxjVIpD0Rbiq94rrxFw9uUK6XgS8YC
         cTOOPnOV8zGUlGdESFn6YMD7D+b7JqpVNousAi5iW2EcuScmhmNrJLKvEI5ED2G406jk
         sV1bvn57nmFYlaEyx5V8BqjoyMRBmXTdVEiGG+8bfFqfcrGx7COZbK2rq4zO7WCOh9y2
         CZbBCLITsByRp7ibkbP6+siE4/eXm98DmxXel+zMB/Rx58ZqoZfFoljZ9dv6+7AkBeTL
         c73j6sx/tnGSFkh5FW9MLNLg2vk/5p+lVj6b7wxku/PPmBz3rQcKefVOFTr02Xmc0zET
         BWLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XNyE0gvx2F20/43wa0X7npzYMhdeEE84mYGkxQhTzJk=;
        b=co07xdFwEwO29ZTb3FDbfnwo14+0NH3l5L+lEbeFgKGYm9pCg2k69JWyq6YnKnJSNa
         bqcHdX301bg6vcCBv/45v+z1L/1bIcGN+tHXS/bkMQHew6LyOdmX41Yt6yCNzRt9y6Cd
         +4ZkqB5h6IZDGM8bFs0IjDkPv7Du5zE1ylyjDT4RkKo8t+0cBlgHITbF5HXqHHKGJO2A
         HK2oIcm0inC0baLyEE7zBZdnj9o3ZjG87YyR+7TlLL8gQfDOidHZWW4CqeMuC7cC+jmX
         dFtaRR60E9pGxVXLvDFXP+hs0piisYO3u14HwrKqMQPyDp9S8OdSOqpCkmbTxkoiLl6/
         +uXw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XP2ar++x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XNyE0gvx2F20/43wa0X7npzYMhdeEE84mYGkxQhTzJk=;
        b=gtifauPwGATvC1ljuAEDLxDduVD0/k6paY+W6pVqWZLQu9LcWV6U30vPizx8eBLA9m
         1pCrcujya7Rwjs4T1UdzSJUmtAtRdYv8kf0RbuEiwKCRnV7GPpnd8X+/zM2GYmWJeOfV
         YlkqHlSHs1c0fGzXFXkCXY5oT1F7y2s18PgcY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XNyE0gvx2F20/43wa0X7npzYMhdeEE84mYGkxQhTzJk=;
        b=STIpDd9lA8HO5rO3O9RlZeeaNGIDiqtnfA98Jb6Rina1KQqKbCWMgMJ3c5OQyQ1tac
         R28ASVV8HxU9egkWkq/QJrVo3/Nqfkd3bV8KRGYVy0vhvv1ORJAfcgoSTB7eUkuS6gBK
         7TR/0PKaVGscwtjpboOWY7pJA5c0KRzE/O7Lav7UrqOn1e417iM8O705Zw5gO2OnoV59
         /1oMZVLxx6WoMVa8VmSmiKDyYr+gidkWFK2qE3DRcxVUzknlgnHNQ8B4NmXN2XTjeSTP
         Vr5HLlbag5uJt84FrLctkj805r0ALlXkLWISFXr8evTm8JbPaxSB0lZ3WFUBYc2buvFb
         1ZQQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVSRCBiAwgSwfc8BXhaTK36vzbOt7rEqojUBLAoY3+3yEGdZ0Ie
	UGNbDQC0ebr9ZWjktX1R57mcnQ==
X-Google-Smtp-Source: APXvYqxSl3tXOBskDy6VTylBki+p7K2EC7Ksl5Ckojk6+xbrUBX6PQvPyKREqmwoQLGvambRG7LopA==
X-Received: by 2002:a63:de4c:: with SMTP id y12mr379954pgi.264.1565700275282;
        Tue, 13 Aug 2019 05:44:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:9e81:: with SMTP id p1ls1216479pfq.2.gmail; Tue, 13 Aug
 2019 05:44:35 -0700 (PDT)
X-Received: by 2002:aa7:8647:: with SMTP id a7mr7486136pfo.119.1565700274970;
        Tue, 13 Aug 2019 05:44:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565700274; cv=none;
        d=google.com; s=arc-20160816;
        b=NHhLgvfmYdPHeP/jzN7KE9ugcCK8pyQotFSzAA1v7//f+LvtoLmOVua3/noiLLhdp3
         qaIr6HwBeZjjPpwhE1D9NZ+osTrCTyhNpTT4AIShw9aLxH4eJrgxCSfSYo3mVtnKMW87
         F31nuVWDPk4xgvTewp23F1qCE33mR59al0PCOZ5LBwzaRQb7jRVHvx/YqJcPjQbuibBw
         vadMeOPhcQBRyHfX96F79YajK69RJSU38H3hMiRJJQLsVON0rbQjcuAW8CEXyq0gpLhl
         Uilco8u173zHcgHBjNUywXXJWtee+1JuzqfjQW+eetwBnflb3SUI2Zoz9qd1/Axr9fbC
         pApA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KZWw9hyplOk9oHe7HVHwB7vc6Z8N9VaamWjEf/bPu5g=;
        b=DqvQSIUHO8MQWq/RpDhtgAPZxk/MibT2B8ZIGAVpQalxylpgItRvh5DRYXiD1Q+S5S
         RE4mbnWAjg2T84Z5qMMBGRCRUC39/1KqpI7GsEVLJkN6aeWxyEsNH79JgKS54k3K3vwi
         hwhEx7Lr7zsLVbOoM/2FEHN2dFL1SfVOJMjGeONsN/ufQpj07zJYcW3eB+KTFoa3S1AR
         leqv5B4A+vNI/joJMhDPa0ta6IhYiDpLztfhfdBGhCDkC9trGm0T7DjiX2JlyXFsZXUw
         YOLhpHQMYqfd/LOBa19kCQ21xB9ir8jOP77aslVRE9iBA3/Bz/xZ4J06aBJP5h7twQxx
         TNzQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XP2ar++x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id f20si68428293pfn.166.2019.08.13.05.44.34
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:44:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 350A720578;
	Tue, 13 Aug 2019 12:44:34 +0000 (UTC)
Date: Tue, 13 Aug 2019 14:44:32 +0200
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
	yamada.masahiro@socionext.com, Julia Lawall <Julia.Lawall@lip6.fr>,
	Gilles Muller <Gilles.Muller@lip6.fr>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>, cocci@systeme.lip6.fr
Subject: [usb-storage] Re: [PATCH v2 08/10] scripts: Coccinelle script for
 namespace dependencies.
Message-ID: <20190813124432.GA12475@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-9-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-9-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XP2ar++x;       spf=pass
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

On Tue, Aug 13, 2019 at 01:17:05PM +0100, Matthias Maennich wrote:
> A script that uses the '<module>.ns_deps' file generated by modpost to
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
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---

I really can't express just how cool this patch is.  I was amazed when I
first saw it in action a long time ago, and still am.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813124432.GA12475%40kroah.com.
