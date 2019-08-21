Return-Path: <usb-storage+bncBD45FSE2XIORBENO6XVAKGQEJTRODGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB1497D28
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 16:37:07 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id g9sf1579092plo.21
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 07:37:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566398225; cv=pass;
        d=google.com; s=arc-20160816;
        b=WpwsynBs8FlAFcCMamQ4cw/5/d7sySRMl3unlfpoIui/KfLX010ZuR9VTg12XvWnWE
         aYdypc+ekoDLEVxpVKid8C4TlW0AI2HpgFBmhIMJDJbwoWRTYnQz0p+lBaev/pfTTyUG
         dwbajFvan2NisJ6xtIkws0gt6oVRHGdaDnsBBfR/E/W3+MkhN006NQ3/02F+HVfw5Y0L
         SPskFwhG3/hi2Wjl5PliMZMKmqL5mRW53PeLF64S2cXZH3ZjLmTC+ct3sBgGdld8GaSW
         bifK617XVnaXkKuMvDTTyhEW/aC6seGkiY4L8L9EgJS9FL+CGp37e1bmur/SVzgNOkNe
         wXnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=rL9NCp5umcvTJsPO7KmSOy9lfFodoBzrMRYFvNMVC9A=;
        b=w6UnwiOJCr9qoCq3dwIZWl0AYLCSZ6NN8e97SLvDcLurLSJiN8+UIt6sV5n7MMziAb
         TH3/bVWoq4x2IOndb8uNdeeiaM2S5XI5Q3lwwepuEWq+uPFDp+7fao+W+ihtZx1leqd1
         iWEgCKad+b3TNhjO7/tjKZkL/jThVQFnV8FBuRzqqw6Bl+LW3qusJELOnumKVHaWkhcn
         z+ITKjLJSDqHoTsHRQbGvgYjP48Ua1R1mZ95vr513sq8Cnrr7K/Tgm3kn85UqEf1CzSy
         z5bX+p3Z4nUWGbfovQOqjwoHc1ZFtXaBbXpYaS4h3aa+U3L2OXwq8aw3gqk5U5jhyN2q
         A7JA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tX0ldqZE;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rL9NCp5umcvTJsPO7KmSOy9lfFodoBzrMRYFvNMVC9A=;
        b=DZNaz6Xv8UqeRO33SSxC8C8kSRnuA4u0CCkmPtU0WYxkn/odJVn4yEcYtJwTOIrSM9
         BLWB6/UmegRfAkavHPuPK4WbwmaHvfJNFRewhYRAeZa0uR0YvyxXXxKMAtmC6+QifQo/
         Acj9xvv5CnQ4v78CrqH7jP2f3Z1qbQpA3xluk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rL9NCp5umcvTJsPO7KmSOy9lfFodoBzrMRYFvNMVC9A=;
        b=txVsh5flbXMWfQqhWykFEbkf/UdJz+KbgEa/qVVWrL89+rJo1ZFOylLCT9xeNd9d2h
         myiqxzLY9PuRW+Dyd38ZdndS3kkXxUJx9LBOqP3Z2DDO58QVF1QOyMl8IsMLufcC0cD+
         sNkp0Bbsm846/9am/Ukfnib2M1CA431jsx7Yov1wC89hnrsRz/9Q95Bg4AYjerv11s/4
         gbUK1DE5tk/eMdUujTA1IQlqYdM7z/+avCIH5FTtPsY9oNkCbRxhJslgHT4SVEcj3G8+
         438TIp60KvYswhVXLdbl+LyRixCjSlQUbm1VUCkUILplsklM07fyvI1igUXcpGPGz08C
         nIsg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUBYMGBrLiUygHI95NKqNbxm7x3mSTZIMjnqdD9+Uo4L6X7hjRt
	Q2yms/FnFlR+1eGAygLvOyBK7Q==
X-Google-Smtp-Source: APXvYqxcfXtTeHYin+i4N+5lKsuZ9jeNvNieOZVkliwprFALWIuCbiDYGTtjtOsOiAOrll2DIC7/eA==
X-Received: by 2002:a17:90a:246f:: with SMTP id h102mr279849pje.125.1566398225807;
        Wed, 21 Aug 2019 07:37:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:8d45:: with SMTP id s5ls667722pfe.8.gmail; Wed, 21 Aug
 2019 07:37:05 -0700 (PDT)
X-Received: by 2002:a63:2c8:: with SMTP id 191mr28892575pgc.139.1566398225244;
        Wed, 21 Aug 2019 07:37:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566398225; cv=none;
        d=google.com; s=arc-20160816;
        b=mCcPos0XO5pkUBq0Yz3S5sabtDvIgBtRlNvwh+Hw/dJs/+rfckAu4wfogYSDypvqIg
         jetkhXVk4a6fDx9OX3g2p+532HYAmS++e9dlUF4x6yk48hrsTPZ2pLJQFE+6lkDYqEKK
         ky/FUs1wD1lD/ciEj8QWYuTmPdM0BulDIWkHkME6Nh1Q5vkUfXIg+OKot7i8M8eWFh6Z
         zNDaQBTBvosW+yP/cvS9/IYu83+1CXFJpOE30cIdfx++t08j5xjXlhkzTloPwnUxwlbV
         jUVxzRl0pHNYhHHamQxXba6lyv19Mvw/2Q/N6p5y4TOQIQDBaTDol22GqmxdGlEtq7Dt
         wvnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fN4ftdNQc5Ah31bTVNDlxGC8tW1L1bd9tToaHWkQYMw=;
        b=JEKvaoKzaOvI6yu2MSkSiR5nJubB08kzz97fvOTKazcvPrCAFPzoKIchuCdxP/Ze01
         FQSClx2/PXI74hqXpeX1TsBp814/Razq52qnEyw9ycmn0SkbkpjQbaYxDLbFnpgNjLJf
         j6Egx/loamFsAQbn1qEfJ0qgLnQClIWfNpHsu1Rnd62m8l5twKoo9X9V7YhVK+Fdvmx4
         zgs3cBqyBIwJF1aisDXz8vIpbYovt5MVRIh1hX+HvG4wqaAGa2DKExYD/e4Y+MNVYlkD
         mvb37R9IpLnE2c3DYUn8LALCzg6BhfAgVljIAaU954bVp/tqC6KGhUMA5qy6fC0RfOXO
         PK6Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tX0ldqZE;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id s17si12419767pfc.69.2019.08.21.07.37.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 07:37:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (ip5f5ade6e.dynamic.kabel-deutschland.de [95.90.222.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B6C2C206BA;
	Wed, 21 Aug 2019 14:36:59 +0000 (UTC)
Date: Wed, 21 Aug 2019 16:36:55 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Matthias Maennich <maennich@google.com>, linux-kernel@vger.kernel.org,
	kernel-team@android.com, arnd@arndb.de, geert@linux-m68k.org,
	hpa@zytor.com, joel@joelfernandes.org, kstewart@linuxfoundation.org,
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
Message-ID: <20190821143655.GA13637@linux-8ccs>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-11-maennich@google.com>
 <20190821123827.GB4059@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190821123827.GB4059@kroah.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.28-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tX0ldqZE;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

+++ Greg KH [21/08/19 05:38 -0700]:
>On Wed, Aug 21, 2019 at 12:49:25PM +0100, Matthias Maennich wrote:
>> Modules using these symbols are required to explicitly import the
>> namespace. This patch was generated with the following steps and serves
>> as a reference to use the symbol namespace feature:
>>
>>  1) Define DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
>>  2) make  (see warnings during modpost about missing imports)
>>  3) make nsdeps
>>
>> Instead of a DEFAULT_SYMBOL_NAMESPACE definition, the EXPORT_SYMBOL_NS
>> variants can be used to explicitly specify the namespace. The advantage
>> of the method used here is that newly added symbols are automatically
>> exported and existing ones are exported without touching their
>> respective EXPORT_SYMBOL macro expansion.
>>
>> Signed-off-by: Matthias Maennich <maennich@google.com>
>
>This looks good to me.  This can be included with the rest of this
>series when/if it goes through the kbuild or module tree:
>
>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
>Actually, which tree will this be going through?

I would be happy to take the patchset through the modules tree once it
collects the appropriate ack/reviewed-by's and once I get a chance to
sit down and review/test it next week :)

Thanks!

Jessica

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821143655.GA13637%40linux-8ccs.
