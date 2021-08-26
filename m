Return-Path: <usb-storage+bncBDK73744WQBRBDHUTWEQMGQEDC4EWHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa47.google.com (mail-vk1-xa47.google.com [IPv6:2607:f8b0:4864:20::a47])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AD13F8657
	for <lists+usb-storage@lfdr.de>; Thu, 26 Aug 2021 13:25:01 +0200 (CEST)
Received: by mail-vk1-xa47.google.com with SMTP id m123-20020a1fd5810000b029025c99c6b992sf361512vkg.10
        for <lists+usb-storage@lfdr.de>; Thu, 26 Aug 2021 04:25:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629977100; cv=pass;
        d=google.com; s=arc-20160816;
        b=lFptPCalZloKaK37vCox6u+EcED9GRx+3k6ZZzlY7rQkL9pjlTHeny6GmN9+e/hkoO
         ONyulAv6JMkT79uu1ruKB8v29RjCmVjCnDNLuAK+LY/7bRaE+QqIXcSAIvuu0udsEu1x
         0ue81ShoP5z0+ry5WwC8g420XgRfq2+uLCnqE4b9mW7XHEKwVljN//MJ0SU4Eq5wVjWI
         tr1552YB4Gz0DVLR1u+6lSJHZPBxvNNziz8Acj9uzNW89RUkVDt3LezXocM+sHbZpRnT
         tb+s3KI1aGFbvjD1Z2/0H2ekJIPAXHMAC7b0gWHZE72xXYtIdeJTyLeT29DfD8aRUUcm
         D/DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Xmj2WjxebrLIZcOIavLWlI1KLK8bqGRZwy8qI+DyV7s=;
        b=k0osA+ox9Ei0cDn8bLJCecf0Mxw40jSfGfC/KdrAcmnyG6cbPUAneX42Vy6khDtc7Z
         pFh0wUEZ9jW3UkVfB+E/DVW8blMYP5uDiEjPLo45kaWsCgAJm4PL2vIIqRr1Uyw2F4A2
         aEYKXveupuMlNzA9X8PmuZ2VLaj89T0SJo9/d7MYr35Vk7cuvwsVDKIR/lTA+zBiG69B
         YcKgxVjRVB7O1hw79HiEIgNd2w+KDxlGMPFaaQy3gG5mQyg5KrztbqFdy4WVhm67nnrC
         zRift5pKkWebtdiKXujy8UK27L+y2H1fChcwsHwvCsMDs8sv0p1fpu+pVaEvSlmTAQPS
         44wQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=WV6YYMlp;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=cOpYs9V9;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xmj2WjxebrLIZcOIavLWlI1KLK8bqGRZwy8qI+DyV7s=;
        b=QZ9KJWPJ/XnrF05hBp5W0BgItbpheVA2VbNZJ/nOUWGBOb0My5hebhvq/SXeDh6AGq
         BzRAzjNj+87aWmH81E9Lef3z9XAB4mxsIzQ6fTvwQFYVFmS0akAt1MiiKpTbTl1vswN6
         YpydgwvXlAdaVpx4ijxAwC45515TQS7nVZBdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xmj2WjxebrLIZcOIavLWlI1KLK8bqGRZwy8qI+DyV7s=;
        b=bDKBTn5iiFQB8eBi/w4M2rGudw7uO8Z8YNNLeOlJUnbu+SrulNxN8FaMScJ6XMHDEf
         xijt1YpJW0qrbiVLatDx3tgZwLYgUC/LDc4u9d1ehF21CaXeJpFUMfTKqlM5j6W7V+lT
         maaJ8Y9HseYUQlp9D2yJVGxxKUsyRuC/lNqFPzeshN6wJVpnT/voP3kvixVwo5i1iJSK
         adaRMwl7EQFlOgycXMPU5YRE8g+uGyjfa20Yl8uEajpxJ5ZYwLDDWuQvhp8HJk/8cwhl
         azZMOV+pkEzznihuR1U2VvCjhEyaoSbcr7TyaU7rxWi4KBMlYujigeeQ+90rx4b1DfHC
         uK3A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532ob22FmOf10xj3xsolku+YF98uDkkSpJ2u83dAWknTNhOOnNhJ
	XM0m+wOEshBk77to0/V32CSt5A==
X-Google-Smtp-Source: ABdhPJw6gGTDc3YYTObs/+zPJoVKSYVDQhALJNQmCGR1NKwl+OVaJcRzslG8icEtOV8x0roBFoS7TA==
X-Received: by 2002:a05:6122:809:: with SMTP id 9mr1786392vkj.4.1629977100111;
        Thu, 26 Aug 2021 04:25:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6122:2dc:: with SMTP id k28ls378928vki.7.gmail; Thu, 26
 Aug 2021 04:24:59 -0700 (PDT)
X-Received: by 2002:a1f:8f43:: with SMTP id r64mr1641359vkd.22.1629977099584;
        Thu, 26 Aug 2021 04:24:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629977099; cv=none;
        d=google.com; s=arc-20160816;
        b=w9t8PomGDCr/3W0ygsRVwpJySH0TCVV9xBE1b+acHfigNWO3vujuBMmhJKt+9UIJV/
         GoB+yt9rtEUO404OtWqtN1ZjBlEWfopGgTsBwxw21/C2vWXiFBiHx4ocmcUEtu1B3SAt
         Gx0F4na4Bqh1EodKaEG0Dd3OkPd9wGM/NAftThBZ0ftow+Y0jfVDjFy8gu8PdLOIc7/E
         6FNubsRN+8O1GjOOta09zZH3CwITdBdMUkH41pB8yWyJe16Gk9LAb90tVACEKwYTN9hG
         qoflhfSFT0eG0d4lKbG1B2DWK7DHKMHD0qp2gcHmDqbItiIy/URgNIMMb7BdQZTUkIfG
         tDog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=TgIPuEW2Jsd3FPA7yUga5vaBuljumW9gdzJg8zgI5LU=;
        b=ZROTy0ogZLCAvSnBEmGl2qcCv+ExKwBFFzSVAn8EJBldgTTBE1d9dRULd+R6r+Brg0
         6y76CO1awmMRN2O2ay8ts8U+IM+NzBZp89Pw5uEQSdmH3B68VxE4f3DqtSCbti5ePjLM
         6PaV6sp6GGGbhzOpiHOtt35o/2qDfQivIRxJxKcBXaabum+uRR5bao0CMwgFfnpIOj2Q
         jL5DTSp1JzuS1NaNM+H0qoR+uJo4xgu9YDnBRV7Z1kcURzIvUUOAoX/od1+AiB9GJy2J
         WyB9XwqNAhAqLqTP7y2GgJCvPgh020bm4EoLZpg/sRHaa6XF35IFdIgBlCBs0aO0FkxR
         KfLw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm1 header.b=WV6YYMlp;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=cOpYs9V9;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by mx.google.com with ESMTPS id v7si1145080vsr.309.2021.08.26.04.24.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 04:24:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id 3F0345C0118;
	Thu, 26 Aug 2021 07:24:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 26 Aug 2021 07:24:59 -0400
X-ME-Sender: <xms:CnonYZ-MjtzRAw1ScG_orul7918q4JXOtNX8lGPqi2lyHY8gohc7gw>
    <xme:CnonYdvVkseyfaeHysKbuINbF5cOMQt-n8f4rG5-UqWeAZOxTv3taqcwY3NYGUzfM
    s81saxKkP29rQ>
X-ME-Received: <xmr:CnonYXAo7OwK17AfPmSTnV4Nvw2OsjRljNPD61unjTWoGBUK8XubVjgz>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudduuddgfeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
    fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:CnonYddDBbldGAkxmo2vcaGkq2V2GTrGAP93ut6oiBx679WLgWqP9Q>
    <xmx:CnonYePQqLqiKmGXWs3XLY_O8cd-hcYfIW-zeGHkLA84RrB42gcfMw>
    <xmx:CnonYfl-txFaS-9lpac45Tp4o29RaHdex-tbI5aSuI_QwdP8WrIqGw>
    <xmx:C3onYfgMtooJNnNtLQ72g9WbPlM2GNhXD7_dcHdsRFCY8S22_hDBDw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 26 Aug 2021 07:24:57 -0400 (EDT)
Date: Thu, 26 Aug 2021 13:24:53 +0200
From: Greg KH <greg@kroah.com>
To: Niklas Lantau <niklaslantau@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] Usb: storage: usb: fixed coding style issues
Message-ID: <YSd6BQnE3BAuwF9a@kroah.com>
References: <20210820223954.2945-1-niklaslantau@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210820223954.2945-1-niklaslantau@gmail.com>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm1 header.b=WV6YYMlp;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=cOpYs9V9;       spf=pass
 (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted
 sender) smtp.mailfrom=greg@kroah.com
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

On Sat, Aug 21, 2021 at 12:39:54AM +0200, Niklas Lantau wrote:
> Fixed coding style issues that generated 1 error and 1 warning.

What issues where they?

Always be specific and descriptive, do not make anyone guess.

And you did not use get_maintainer.pl to determine who to send this to?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YSd6BQnE3BAuwF9a%40kroah.com.
