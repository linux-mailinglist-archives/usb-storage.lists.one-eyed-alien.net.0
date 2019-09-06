Return-Path: <usb-storage+bncBD45FSE2XIORBRNQZHVQKGQEZFWTG5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id E243AAB8AE
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 14:59:51 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d23sf3442520pll.17
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 05:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567774790; cv=pass;
        d=google.com; s=arc-20160816;
        b=dVgszEzL8JODNGdTUDYlDFg5i9sQMZHSoXHtK4ZDSy3gZJDTWB9u7YOllY9UEDOqC4
         lQHzUAeKDNevpjPtOjqxmBm6XqKpv2pMar+5X4QBKLeRjTXOFeq7iCeeNNwh++ItOk+V
         U/mF2qO/WmBQ1I6P+tbkGnLU1Y4XJE1aPhPs3P24VF6zEGbBfBQHLuBO5hr16TF/gG0j
         WHMwhZHvUpwQEy9uFUxMw0j7CwDuXKcdQKcXyf6A89LCsgdlO0Tha1unr/i0zSjk/HZQ
         drGsRTFV4HMy5HI8aCfl45q5iDL9iwlDCw+BZbnkx9PEf/fR9IXfCGQ0DVMfOoXJ5ud/
         u3GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EsQD4ogdbcEFLEI3n2jnJ3tPDbgIBgNpiX1BJprHrF0=;
        b=PiJ6HDKxiLh9OxKqnmK4a35LgCwSqUeGX5GhewjeOpcCouFoJfNA9yB5Oaxlw4HsII
         mWstl1aTltjygkWwnA1Cjg3VmEUY/IYXuRaYpiX8Cf3LZ/lb8eW68kPLm4t7YhqmpL1l
         uYJTqgogFIvj+y1TFmjw9BPSBJn4v7LAHjum64mWc0BJK+OPB5EOI/73/NzhBF+4rkId
         CRnbN6uLr0ANtKA2oQfDsuaR9xFo3FeqpnvYXDuiM1AA21Tq37/aPqRMbtxK0gU1+ONb
         ILhwAOWehhOEgc5pToE4VhC4S4lVZ9al64rXb6Pt+ZKtKZ61kM9M4K+KMlGzv2RWfAV7
         RwFg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jWKjib7H;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EsQD4ogdbcEFLEI3n2jnJ3tPDbgIBgNpiX1BJprHrF0=;
        b=dGa92wS3CKfZxHpCkl7JE0AXeiqYOL8tRD83NTIOE6FrzIT/NXLxRqBuQID4rWfu4g
         IOlEUHgEwK0I454YO6YtPm/cs84HwJKO+IaOsO7Dmej/FW8ohbUZef+0ZmkaWs4kMJBr
         AwPtXjglG6Nzma8b89tSuDmMcsL4Vvg8dfErQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EsQD4ogdbcEFLEI3n2jnJ3tPDbgIBgNpiX1BJprHrF0=;
        b=UDdIrMv9CEiL2cgT8fAZNuGo41hXJ1zvZ5B6+FOEG/e85jh4gyN5pQvoKThuFJbrtD
         VVj8TAXoINTU0ILTiIE/c64mqEo4WSjaGOFn0Co7vAOR8aeoj6fcxzPQSgzY37yIJKJh
         WgLXwFzWZIQ8rN40yA11PakOMlCXWlTRmmT3dYoJV1huMz3WEpBv++HcretKQtvkBpJV
         snLL9bcfYNFz6Joqsup2KxofodajEdRmHOQ3nMLG644xihuqAVMvpMx8SGiPxaspMSO0
         GBpwjMLpw41UfN5wu2shsJ2pEhrReQ9HqQrWIO0W9LnEanZyL8ojqZSrVg3lWQ1T5TIM
         LNrQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWHcpQsfNSFo5ugttTeP3LQlPTnmBnxn0iKFlkoXx7SVrcBFTGu
	P7dyvjfUETyfAeevxkwmkJ9mtA==
X-Google-Smtp-Source: APXvYqzNTdnMuHJvzrP/7toVTeDIz4X33GcL6As17F5m2nDMg7yMKFcdJxkgtpOHGrmYngwMlZLvrA==
X-Received: by 2002:aa7:83d1:: with SMTP id j17mr10330420pfn.35.1567774790032;
        Fri, 06 Sep 2019 05:59:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:68c8:: with SMTP id k8ls1174320pgt.8.gmail; Fri, 06 Sep
 2019 05:59:49 -0700 (PDT)
X-Received: by 2002:a62:1ad3:: with SMTP id a202mr10315121pfa.75.1567774789543;
        Fri, 06 Sep 2019 05:59:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567774789; cv=none;
        d=google.com; s=arc-20160816;
        b=J9aXH2ATP2CrpjyrJNjaOohXLKlMBkT6pwsdBz2+OyweKsFTK/QoyskXmjZlbNdGW8
         Z8YS9Zo//Hrp5k5x/uNh8+7BsqwHmGARLlPqcS2/93ZpztBWfAam7TTzLWjMwgY1oJVT
         5kdGZc7IhyP3afyCiIEf7iS8+34bT6OOT0zzrhuzTZhNoJqv1SHbQY1BgOCPLpd0KhJd
         l6x/qK63tCbO/w+c0d2OPQbFhWAZqZJIrfinkQrLPBIbthFb0Vb5CwLIIxe6G9I+tuHH
         0asScuSyoWtL0d/LGyhAygcH/S08OB15OnGglFgw33TgoIxyWVB0fHmsT4GOdFYomzJ/
         CqRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7dNk/wkZnLE10eskmOPYWTGcMMyxymm+d1pUFfQCuyI=;
        b=laYvO00Ocq13TLR5F1D6c191UZmhbE5Un4loLrqT2yywK8IBWSBadEJyzWQBlEkKLR
         z+iH0S3igoBFitA0ESfdFxPMYglIMUsaz+lEgewOWBWVqCxrbS4St1gmjaz2tjZcMc7l
         H0nCZeERrmBbOrsmxjIylPm6au6gcCFAqUr9ghjPkiLIrqvKHiuEUlukyJKHf09UEuBI
         Aqge5WsIeRwQcMbjVhB0zy1UqfE7KVdF0CCNbsNQaDLmpqfPjPZYGf7m30Gp4UfPzdFe
         ZYkePcc8MWA+l1l9t0kEqyMEJInblO56Zpc03hYfjBCyoQiHGOKg5ywbWH9gix5IdjCA
         8xNg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jWKjib7H;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id h13si4735050plk.361.2019.09.06.05.59.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 05:59:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (unknown [92.117.154.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 159162082C;
	Fri,  6 Sep 2019 12:59:45 +0000 (UTC)
Date: Fri, 6 Sep 2019 14:59:42 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	gregkh@linuxfoundation.org, joel@joelfernandes.org,
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com,
	will@kernel.org, yamada.masahiro@socionext.com,
	linux-kbuild@vger.kernel.org, linux-modules@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v5 10/11] usb-storage: remove single-use
 define for debugging
Message-ID: <20190906125942.GA31531@linux-8ccs>
References: <20180716122125.175792-1-maco@android.com>
 <20190906103235.197072-1-maennich@google.com>
 <20190906103235.197072-11-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190906103235.197072-11-maennich@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jWKjib7H;       spf=pass
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

+++ Matthias Maennich [06/09/19 11:32 +0100]:
>USB_STORAGE was defined as "usb-storage: " and used in a single location
>as argument to printk. In order to be able to use the name
>'USB_STORAGE', drop the definition and use the string directly for the
>printk call.
>
>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>Signed-off-by: Matthias Maennich <maennich@google.com>

Greg, didn't you pick this patch up for usb-next already (for the 5.4
merge window)? If that's the case, I could apply the series omitting
this patch (once there are no more comments or complaints).

Thanks!

Jessica

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906125942.GA31531%40linux-8ccs.
