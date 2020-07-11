Return-Path: <usb-storage+bncBDD5ZFHSSQARBLM4UX4AKGQERI3Q7CQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B38E21C262
	for <lists+usb-storage@lfdr.de>; Sat, 11 Jul 2020 07:29:18 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id e11sf8750602wrs.2
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 22:29:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594445358; cv=pass;
        d=google.com; s=arc-20160816;
        b=IOUQ6a2wHNVwkZpaHP81zqErsimIuUVZ7sKDSz1wBF/9fNs7URyOTV1VQd9gglD+Lf
         N72cn3X5HAs0AQSSaM/zoGqnFWwQr+zj8k0ymAG5bc+ceu6u+yGtCMkGsf7Ydves2Om1
         8rCW5KmPqX8RaehsndFtS69Z28tP1vt9c0zhDppJ++JC30cx8RepOZdPsfmpjzWcbYqd
         VmuvtKAMI3+ny0BecaM72W8t3UNWccnIPCBAS77Z/n7WgCnpVbs6PdeT4FdM9kK4oO0I
         /bTw6t/c24yx87ZviMyGKB592b3ObeBN2k2T1HVArA6VLLo4yauPCO0nwyFzGAW67LN7
         ES/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=eFmOnHtd76uO7tl1EVTUSjI49tLcvAQkO38QK7JQMFE=;
        b=cmkR9hWaGXSr33iPkwlaQw+27Hmt4oD4ZiPOOUEyjjnW4Qyq52O/9F4E+88cf7ZJER
         U8ql5Yb0k1ibQGXYrY2hjGPHg2EDqQgd1b/7wbBRVO5C0zbO3AuAkP8/m2AfwDC9Iu2o
         tecZ3cl07qzkx7nK0P3DshaK1+trvWuvqMWd1RAjrz+Rey1I+b82HXQUVOv7U2vVC2O8
         QTTH+z7wNrgV2z7ghqzEADihC95f1hlunmEcVZys/iNP2PRkJV2b280VeAR1GeJGVZh8
         RE2MDAGd1xr5rLtTCYdO/00Ner5rdtlv31xgik8g6Lgimf8+iJIdsXFUpuxoQxLsWcKm
         7kZQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eFmOnHtd76uO7tl1EVTUSjI49tLcvAQkO38QK7JQMFE=;
        b=bnz+AcBhJPsIuSsH9OW/VOOdlfZgljeZO0At0DGT9Segd/gK7IDC1HNXvmVpxCUHYs
         s/BHVAV07SeLaa8ZwkE7r9mIAZuP1s3dWdn4flZ83gRVZOfuy0VWS7Whv82O/AL28nrw
         r9zpqbl16kvRe22x+wpxpyL41qR5qmXKmQvfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eFmOnHtd76uO7tl1EVTUSjI49tLcvAQkO38QK7JQMFE=;
        b=brNGXUkHta2zMg2qGZgQ5nFg4o1ZLnsu1b7bc0UMFnUXuEqBmOQ48uYE+xPQu93Jep
         wE7dJlkRFQR3MAGEodCNNbQ1TxeC3dYyGwz50miVfme2ZL4t6vig5NA9+ieOZxAC+hPj
         UATxjQ2SCtHiJnbc57BtFD53I2fEdddOekjVxN2/Iop5Ww/xMX7XJQc8LltvKr2qjFJy
         JKbs3K8F02m42L0EkJ1X2SyfB26MyDB5ubCq2Q9Kjv0tk5MkQoP6Aobtvkqg/jycckZN
         lyJSJHX87+GerwArugz+W0mtgklu5va/avNT8do+jd2s9x7/8X5zvGsMqxlpDmrmkwLA
         NwJw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532Rz0sxXs1EMWziic9avA6QzqUoAtRVHiCbENJEGi7ivanqDVj2
	i46LnlHU+ljvrthFs5Zl46pq6w==
X-Google-Smtp-Source: ABdhPJyUp/11HjfTiIN3ftkxiPuOX8IB+eQusgoZ/Yvp5lie9ylyGN8JWMXxDsGIvHpv3Ilfo3+aSA==
X-Received: by 2002:adf:9051:: with SMTP id h75mr75733092wrh.152.1594445358077;
        Fri, 10 Jul 2020 22:29:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:2902:: with SMTP id i2ls5617637wmd.2.gmail; Fri, 10
 Jul 2020 22:29:17 -0700 (PDT)
X-Received: by 2002:a1c:6408:: with SMTP id y8mr8239770wmb.122.1594445357468;
        Fri, 10 Jul 2020 22:29:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594445357; cv=none;
        d=google.com; s=arc-20160816;
        b=04PfFKk8+CjnKR5twFdZGG2vI7hx6hczm/RdtG9FuBoO6xdc0K5STNkTw8B/Dmrj88
         ROKi5S4dl3c3lWMoNJpGDXNZ4JpzDhBqHqNauEj6K0pyCqPi4xjbvVPZIiOVxpjs0srk
         U9R5I3Z2ZRxTZCYuL6FTYDjSOkypVkyVX7/ejIZcpVBuFSd/zBPEZV7zujpve1izRk+N
         aAbUZSSqzUGwFLZEEtQz3TUfggLRL4xb3hpIJStqgtBEpOdWG4aQ8P4MnbTgbS8hbYZ4
         vi/v8XzwzdH+LSAlfB1qNFkpJV0tWXlbPo46pUQOZLD2B0k8GhnBY/MpfcuV802WtV/z
         Bcxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=+5YqqU+Ti8SeXUKMHv08KVPT+cZVXoz+2yAPCZ+IFsk=;
        b=bz2hVPxsLEbW/VmEk6Sl2QuEGCvPUBgut/Q0/k/abjrRXPNW1HOHLQnnmTRpWoozen
         CRInwJ5+lxvKZRvI28rw5Fn5S80h03RDRv0nR8pCf02TxJXiHsSDOwio7iC/HrjZwKhY
         Pi5eIw11FE2uYsgL17T+wHpIfp3dNExbiGIZouhVqB1j+5rRk2k8G8rFinxNi1ejMz1W
         Hmtu3p8pMt/SJp7Au6BKsJoQlmY6t7Dzt00q6SFXnQdySD8XA1wcDeSQ55J9wZizo/br
         FVKRZjJrcj/IDhdkCu5QhvNqpCSMoN6Jz601+CzqU+6W3AO+9WRU4jMDMhQaIhLTH3r1
         NhSg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by mx.google.com with ESMTPS id r4si5852292wrp.338.2020.07.10.22.29.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 22:29:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 6F584BC078;
	Sat, 11 Jul 2020 05:29:14 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
To: Jonathan Corbet <corbet@lwn.net>
Cc: Stafford Horne <shorne@gmail.com>, Greg KH <gregkh@linuxfoundation.org>,
 stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
 <20200708103928.GC585606@kroah.com>
 <6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
 <20200709061409.GA130260@kroah.com>
 <20200710103621.GA437393@lianli.shorne-pla.net>
 <53342e1a-8430-2557-94c7-1da979a79e68@al2klimov.de>
 <20200710153519.421d2cf3@lwn.net>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <91d09f25-664c-59a6-199f-2592ba883aee@al2klimov.de>
Date: Sat, 11 Jul 2020 07:29:13 +0200
MIME-Version: 1.0
In-Reply-To: <20200710153519.421d2cf3@lwn.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of grandmaster@al2klimov.de designates
 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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



Am 10.07.20 um 23:35 schrieb Jonathan Corbet:
> On Fri, 10 Jul 2020 21:36:03 +0200
> "Alexander A. Klimov" <grandmaster@al2klimov.de> wrote:
> 
>> 2) Apropos "series" and "as whole"... I stumbled over
>>      `git log --oneline |grep -Fwe treewide`
>>      and am wondering:
>>      *Shouldn't all of these patches even begin with "treewide: "?*
>>      E.g.: "treewide: Replace HTTP links with HTTPS ones: GCC PLUGINS"
> 
> No, this isn't something that needs to be done across the tree all at
> once.  Keep going through the appropriate maintainers as you have, but do
If we do treewide only if needed... why is this treewide:

git log --oneline |grep -Fwe 'treewide: Replace GPLv2 
boilerplate/reference with SPDX'

> please try to adjust your subject lines to match what they do.
> 
> jon
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/91d09f25-664c-59a6-199f-2592ba883aee%40al2klimov.de.
