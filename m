Return-Path: <usb-storage+bncBCUJ7YGL3QFBBVOOQOEQMGQESL4R7JA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 788223F3A6D
	for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 13:45:27 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id n27-20020a056a000d5b00b003e147fb595esf6193630pfv.6
        for <lists+usb-storage@lfdr.de>; Sat, 21 Aug 2021 04:45:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629546326; cv=pass;
        d=google.com; s=arc-20160816;
        b=UMXKvuWTPl+TTac51lgISsMxsCrd7yiPHuIhinE5Sw4Uq9zHOLGn2w+m18kGa7KvlD
         tU7HvA/GUYtaHXsBxyePHEa5Toc9e9RuS31jzp+ipFGL0W/5KFgCXuZIdv1C2Y2aIq9k
         DncRwUKrO0dZVwgWZY2siWGPe788XZe77CXDh4Zdq1eQj4smodoepX+JcgWEYs8bFb1l
         G84Omv/uehd2sBZsir5pYynzNO4UcXKelEwwtU8kPZzRxdtX0NIljYl7zrhf1SLwnUql
         ngaxBn+qge8iYIiaV/n5fqFaPOM/6sGsEpGjZ2PZLtp9xyBmwxykHSFPi6RjQuaOGIvV
         t3KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zqwEgotMqEUQrjTAxulxrIYQY7kIyZPE9doRFDDcDlY=;
        b=Eb5jmg3Q/wjGUE9fJBdq1eTwEXHmlwBrxUbSplyO5EdQUaz2OEhxO4WOakxyJAuc67
         N4+V2u8Cx2ZmLUuc0NK60Xx1BOBG29cT8Mm1EQ3p7DYbmwELVp01UshAeaSMSAba4qtE
         NTnZPQxyo2SZEw/ym1IX5CYQRHBR+c/H4i+BnCwwUMXjlICma+6V49DDtU9sDv601wNC
         Mk8JY6SzX6hZYciPbMkk5Sqlri7iFtcGyGxSfYW8E8iJZGoPFdWbC9QAUNf+VUMFBzLD
         qQx0o/WWPZjldpQlDBT2UDGdQI6NGblVf3YJXfStqNxSTMdw/6Cvr6794FNIeAJ6lg3U
         9ebw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=r5eRsIUQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zqwEgotMqEUQrjTAxulxrIYQY7kIyZPE9doRFDDcDlY=;
        b=dEycc0FfMxSwjbawQu5EpPG+YtfNr6PJKmlVGw9ABXHit2AZ5IJCs7q2WU2JAWnTwp
         QdrQxgPdnf87nEO1QXHqjGmFw1pdn6Zv5uO39uEXFFpxVGL3s5i+ddfSunfVBX9+032N
         xNapK1tQnynEUNwIkCqnHIceMdI1yYBydnn5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zqwEgotMqEUQrjTAxulxrIYQY7kIyZPE9doRFDDcDlY=;
        b=YAW+mX4tHlph6GEclueMeNtbkSy1uVviQ06LgiJ5hAcJQImR8CZ2wcI5fArPzcyVHk
         RRFOsDs/nXLAWVh+efQuAvrtWYH2S0IyQFrCo5KxB37TuETYIE+Dw78PcmlYQ67MnaNg
         ji8eDl4ANga+58jh6v+6sWRWMSt3BIhgpeuDNdyjnyGFUI+LboXkxWxMlN+kV6VWtHcP
         wkKLMQY/P2tsfWh6oqcxSYe8HM+MlUbwiiVHa1lXv9nrv9H3sSvFR7n4r/HwPv6HovS4
         kw5g+bgnrtlTeVYh6GVlAEDkj+Ce+mzxD8YEKsFc8mLSTZYmr+D18l5rBjT+6bxjkX7Z
         WVgA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530vwYUzc1A4Wl/hDfT8FwlgxBZg0mx78Ac2QVpmgMsy8rT3Hf22
	kNVOB8rsf/aKyhS8yLxpAvUwHA==
X-Google-Smtp-Source: ABdhPJzjZwjqJzeJ04d/LExn9tzMvbDFc87e9p8OAXZZpZJNskCIQ7tnSWWhJEWgxLtbVMgw3GB/Vw==
X-Received: by 2002:a62:52ce:0:b029:3e0:7bc6:3c7c with SMTP id g197-20020a6252ce0000b02903e07bc63c7cmr24699194pfb.20.1629546326058;
        Sat, 21 Aug 2021 04:45:26 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:91d6:: with SMTP id z22ls4539871pfa.5.gmail; Sat, 21 Aug
 2021 04:45:25 -0700 (PDT)
X-Received: by 2002:a05:6a00:26ca:b0:3e1:acd9:bb96 with SMTP id p10-20020a056a0026ca00b003e1acd9bb96mr23930027pfw.35.1629546325384;
        Sat, 21 Aug 2021 04:45:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629546325; cv=none;
        d=google.com; s=arc-20160816;
        b=GFhFyvBac+ARJioG/XQoZAz0beYO7M5VRzHwgjYo+9yQg35zPcVHsepPGRh9fOCw7H
         hI/QQHan97vR7pzCcUtmcAIbMAO0gc7wyrJHQiu4NlzHyaLI9cCp4ZssSfdCAcl2CXih
         grSa3ObjBRRvyvjDqC/YxFwb29W9xhTiZqCz4+bYRm8bQa6lWYneMa+LR7b5sn8DramH
         2dazticoTdstpQS21JoDP3K5D4JDPrATzIQtLI/M6CEvkUdkulwe8b4zF+l55W/IdZBq
         O7wofpgAUQNck7a3P8zHObuSZQ7W+75RB9EmniMX4rqdlJYSfaEVCSMa2qaY8cMWccSs
         CUpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u3hadeyvCzQXv+o/5duMn+UQiBH/zfqT8lBIQQO4++Q=;
        b=Np7DvrpRdKd4vyU3zW3IfJedUk4+VoAFziubOEOQ2ByjUwv7Opgfbp617IhuMOssRo
         zUFPs5W9U7UmNi43OSWKvMcJJCrEio0yTLaMQNsroeI3/A8kX1AvWsWXqw8XqczOcS56
         UyRMqLaRNU/SLeFi7Bw/x6+EeNt5k2tXwGwZma98co0P+YOOq2y6xROfSZDHVMwKmO8d
         uQKJACwafHZhOYgQzED6cXr5vI5zyV8A05h1A4/BQubAjIo0bhDKtUGzUnJWev25ZeWH
         VM/GXpXWspDzCENO0iUgNo1I55iv14Zn40nEIyQXufvh5UHYFsbp1gXxJrJC+OYhhhCG
         Zqkg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=r5eRsIUQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id d20si9870324pla.368.2021.08.21.04.45.25
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Aug 2021 04:45:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1224961163;
	Sat, 21 Aug 2021 11:45:23 +0000 (UTC)
Date: Sat, 21 Aug 2021 13:45:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Niklas Lantau <niklaslantau@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] Usb: Storage: usb: Changed function
 parameter name and removed braces
Message-ID: <YSDnUQtntAUhJXPr@kroah.com>
References: <20210821111605.8236-1-niklaslantau@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210821111605.8236-1-niklaslantau@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=r5eRsIUQ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Aug 21, 2021 at 01:16:05PM +0200, Niklas Lantau wrote:
> Changed parameter name from __us to much more typical data
> after suggestion by Joe Perches. Fixed minor coding style issue as well.

Do not do multiple things in the same patch, this should be multiple
patches.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YSDnUQtntAUhJXPr%40kroah.com.
