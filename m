Return-Path: <usb-storage+bncBCUJ7YGL3QFBBXGLQ2QQMGQE2FW7TNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 159DC6CA75B
	for <lists+usb-storage@lfdr.de>; Mon, 27 Mar 2023 16:19:10 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id m12-20020a9d608c000000b006a1461bc5cdsf664609otj.12
        for <lists+usb-storage@lfdr.de>; Mon, 27 Mar 2023 07:19:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679926748; cv=pass;
        d=google.com; s=arc-20160816;
        b=B6OPkohk3UAdeMgx8SKA0SjJzdgBuKnWz7HMxr/rk2xDO7V9orOaTVAu2NWihPphTU
         Pa+JO47gV9HAIw3tj/winIKmciM7vuw69EyUxvjIjAkiZAiyyCzues927iTC3Z5j2RIv
         hxGfdeJxRo5l9NuVsN7Oev+VNVHiZ/biSJVEerMhlBYQG1UNTd8QoIeJPs0nmNDbXe5g
         MqCppOAAP77GyZ/1wgRi3OogkSpzZ42FW6BgTp751RyqhzpCQR5PhBbZVeQdCNsX9l1s
         3XEnEQXY91ho8MNNkjKB/OOAMCzF2fKSHmAfErpJfQT0wY9OGBZEPopVbQaPYu5N++kP
         vc0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZS8NnYJE6ku4mWAcz7YctYUtHACmDN5ztOIRMRTx4wg=;
        b=i34ncNjM7CQDvxsNz+2YpaUQuMzq3MNm8IVcbjlq78AqWdAxErnN8l1o9xEqroqZSZ
         B+XLyDtGukBO9R1edhEZX5xWmB3m+RTl0nkywhRrfI6uop3ujs6a7CWwT9x7qHu2X5kZ
         BQNGDvULzMURmOt/n6nwxg0RIcyItpUzY7ZjhQyanl2C8c0/oYCFnoFb7Bs7/ysdOwcD
         NLzqDc1Wvx1J6sWqVcWXzQ/z3M/uze3+Sd8XQQ8TLLMzYtNGFF3W0m7t0mWWJ6yFiw6U
         Njgz8i6CkJY/bODhjcYbmiBCarPmovcVATy6ZJ3htNQFE1AlNOUSBMzYsLcx88gsft5/
         ER5Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=2JZnVhmr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1679926748;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZS8NnYJE6ku4mWAcz7YctYUtHACmDN5ztOIRMRTx4wg=;
        b=Mokq2IErlvAcY1mGRUs5FjAt3DmTfHGVCUTWV+FvUMDvrnAt6a6umZvueOvO1Eb2KO
         +LYlOMtOVe50kGH+YrWZtzvI9l51Ilb4EP0Zlga56Lmrvoi9/6RgJqWe50LOzND/PzXx
         VYzomiuU4NAiMUx/64EKIYBjihzyhzLPTs5pU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679926748;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZS8NnYJE6ku4mWAcz7YctYUtHACmDN5ztOIRMRTx4wg=;
        b=C9G9owbmAt0P88HatHGp2vYi6l+lrCIk05u3EE0/sg2mg3O3dzIFVrIRSgcdihWmD5
         L1BsJqYejxbz11K6Wl6sf4BmuwU8q+emeod+87hAVStPqbN6mTNDL0H98NyRv2Wucvvq
         mkwOJKlWgMrrQnO0FfWokIIVc6+enU60n8J7gTts574iBBzM0TMozquxGdcrKbekDzVz
         7rIMMO/PJEqpnEfTLrxSDIv3mxB2VIBVR+6qXULtcAoVe9q80XZ/Q+3yzzJfztIBXQvk
         7s4U6IBtKhb7vKDwgrEY80gtY2IAnX/ZXknGEC08m8lL0+IAp8WeRLlvtzNjfnB21Izp
         QQfg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKXRpWuCiZvbXT8XgzNABYstrXTNteg4EfxEsSd6vO3H7hkhOYRr
	eJ3MkUWhFG4lIP4B6ESZM6BvJA==
X-Google-Smtp-Source: AK7set9SMDSuyKzMYi7u6ccWU+HmHTDojIZ3rgZkRXfZu6AZLTqpMDN4wdayUIj8F9C2Fhoz4W+6Fg==
X-Received: by 2002:a05:6808:309a:b0:388:240:9af7 with SMTP id bl26-20020a056808309a00b0038802409af7mr3471518oib.0.1679926748377;
        Mon, 27 Mar 2023 07:19:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:3b56:0:b0:385:1509:5ba2 with SMTP id i83-20020aca3b56000000b0038515095ba2ls1950833oia.0.-pod-prod-gmail;
 Mon, 27 Mar 2023 07:19:08 -0700 (PDT)
X-Received: by 2002:a05:6808:2d3:b0:383:f91b:cf5 with SMTP id a19-20020a05680802d300b00383f91b0cf5mr3255526oid.53.1679926747803;
        Mon, 27 Mar 2023 07:19:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679926747; cv=none;
        d=google.com; s=arc-20160816;
        b=LjBVFDDuZuj5qi2xs7m8JkLcebROrCFG1aFJDD1kCPWyfXtRwsu3sP+CqGjIUsSMzB
         d73z6MjUIH260PHMvaFSgVV6YZvAhm9Ec7p7AgdfKqbZJ1/Y5GkTvFjuRqpFIxJ+tP0I
         0CWMa0RHiVah24+mi/5ZJo0g50diNz6twcpNSmaCaK5gcNKJopxCkcRnwdrv1vV7s9x1
         /WXqh8uNpljlPjZruI7ULI1gw/Y1DNM0l/YDDe0eXQfUBMV8dYJyEwf+Ouin2v+shlHH
         doZHtVc5fW7A3iqdOeBpOqWPpOGlsORIFKFDlz4bjUuC8j/+7f1jbaqQdRM8AoFad59u
         81dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kMVuDFdEdcH+lRpsacQPT8I7bh98Qo6EH/sQdy7xHnU=;
        b=pdJdylry0DWaNjDSpZpCGoqWvC9u6cwQwlgVg8p7uevirQJn/dqfqKKcjaSXo3ZW+Q
         5Sbi4lOk/EHPL+Iv9xsMVxEGocoz07nVRpvg+REqg4pZka1Kastz1UMg2lNMglUXhI8Z
         0cB5u98povoehUW7PE6nZ8CRvJ3fslE0+1JZBEpeEnYn0IFo0SKfGzo2g13SNUEHVDLL
         M7gsPADV3HOd4a1BwTmLfHOzzM1+Um9YLsYYCMbLImPuKqu0wqauhKtnbkj7vWX7wMhb
         jrakqVP+86zA2T6kAHQiRW+su560Xk4cJsP0b1nB5RdRboJ8Zpp25hB2BoNifrHpiO7f
         wlaA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=2JZnVhmr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id ez9-20020a0568082a0900b0037d8da509b9si25506724oib.131.2023.03.27.07.19.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2023 07:19:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8C90A61272;
	Mon, 27 Mar 2023 14:19:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A3FEC433EF;
	Mon, 27 Mar 2023 14:19:06 +0000 (UTC)
Date: Mon, 27 Mar 2023 16:19:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Yaroslav Furman <yaro330@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re:
Message-ID: <ZCGl1jhy4irUFvJ2@kroah.com>
References: <ZA12pMgwA/8CguYd@kroah.com>
 <20230327135423.607033-1-Yaroslav.Furman@verifone.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230327135423.607033-1-Yaroslav.Furman@verifone.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=2JZnVhmr;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Mar 27, 2023 at 04:54:22PM +0300, Yaroslav Furman wrote:
> 
> Will this patch get ported to LTS trees? It applies cleanly.
> Would love to see it in 6.1 and 5.15 trees.

What patch?

confused,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZCGl1jhy4irUFvJ2%40kroah.com.
