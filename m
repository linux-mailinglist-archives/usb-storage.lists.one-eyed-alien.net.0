Return-Path: <usb-storage+bncBDMYPB44VAFRBZF7YTVQKGQER5UYGNA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC72AA64F
	for <lists+usb-storage@lfdr.de>; Thu,  5 Sep 2019 16:47:01 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id a17sf1102588wrr.10
        for <lists+usb-storage@lfdr.de>; Thu, 05 Sep 2019 07:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567694821; cv=pass;
        d=google.com; s=arc-20160816;
        b=R4k6X0ckFIO60IK8bsJVLwnvo0AxDfTFa84z5gpKrbre8J7PGGkbQEkJyVYUa2n/DT
         1Il7QnrGrfUWS7KB1HP10nxt1fRqNhEPINv9CPP181tgVC4TH3HHdQU55zR/Phw17pHI
         YGFQ7jIkManBHN9tszGq/sRynVL/NOTbVxXLfYLZlUhJruMHguL9xfKoeZuMlQn3BOfF
         nAyL2/VGeUExreNcrleHI8Ub9ue07Efx0jQYaLn/jMMJe3Z8LqvX2LxuUGYyurgci2EP
         kKb2x2Ubn5Ifl8tA+Y520QsAYBaf7YnUNpgFlJQWYM8/zVfLL6IWDKX97KFD26PKxXDf
         +VZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NdgNvnqjJTlZytIN3iw7c9ujDiay+2eDZdz8hc3nId0=;
        b=Xgnx2d05qes5jArDQm9bNoewEZoD6zLHbJGAXfW+o6mVICDpaTn/G1HnXRPZRe8Meq
         /8S+dplV72YBn42cLR1fij091MgupG8bX2ittqA3EfIId7G21qLsFf2jqFuJYrrhbdW6
         YeC+BSyclaMq2CP0o8x67YS/hlXcFRUDAdoE1ihDByxOsqNlav5d5xi+BhOy1wswufEw
         G2gNU2wLftNs3306BLDw0hxzd2maBxkECgrzP/NYUpjZ4MjYEs58idxNPxLQetW0ojps
         5ybtppFREZhbQBp/Tne+Hp2YscRQyvAO/Z0F8qNt9pkXYsMZTM7Xl2JRzGlrqYmvMVya
         4ehQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MBtV92rB;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NdgNvnqjJTlZytIN3iw7c9ujDiay+2eDZdz8hc3nId0=;
        b=XQvxrvADKGpfPZILiBahOZoK4h106/h2324qCLbypPZYEKFbMvxE67trwg1PT9BMLQ
         g3hzTTEo0cJHL6nlFU5cEl8LM7IrijxPvoSMhmB9cr+4JtKQl+30o0ClaIFD8n05NXpX
         HT6Lpin9srBgjXW6jCmeJX6z85DX6ofw8QwfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NdgNvnqjJTlZytIN3iw7c9ujDiay+2eDZdz8hc3nId0=;
        b=AdXYCCIxAZ4fnYn2pKoyjTtzFMjHyQ4U6T8+A5vm7z5BlEK3Wvwl+BLDY0gNv5vPz6
         boewbBO39+YF+Y9poAOGTNUJkrGnKssKl2R8pb5FB8MFeltFwAukWRb8d/eumbwie7T/
         +btMXHgiAPltBGF0awAc3d6IrSHLvkAihD4j6ZWPI8WX9slaefaj2CHFEIMGU1oC7WSb
         5FY95+ibhLsbdw6LVk2u8zRQfkzU9w8kP8dGkfvnmEWFw08haAR8OgW4MDzIt2D+SDlq
         TSdVXe0Iz6Onv8QnNlGKf76GX9hLdRlzeskB34cOEh04yej0VHc11tGA8ryWh0pyoCp5
         Ylcw==
X-Gm-Message-State: APjAAAU0Fz08xQj/SxZs4cB5HKDQDWFREXzePrxYzZhYa6o6lhjfF8hx
	rbjDjBhjge6RN1htISVkji+DXQ==
X-Google-Smtp-Source: APXvYqzO7+cKaAinpI7SAzM9AK92D47Qbl7C/6Pm8HJmWKWKibxTXTh9+cf0Xc06VX3Wn4vA8FlU4Q==
X-Received: by 2002:a1c:544e:: with SMTP id p14mr3193922wmi.72.1567694820979;
        Thu, 05 Sep 2019 07:47:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:389:: with SMTP id w9ls966825wmd.5.canary-gmail;
 Thu, 05 Sep 2019 07:47:00 -0700 (PDT)
X-Received: by 2002:a1c:eb06:: with SMTP id j6mr3521988wmh.76.1567694820274;
        Thu, 05 Sep 2019 07:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567694820; cv=none;
        d=google.com; s=arc-20160816;
        b=wPCgXCVxxoRmf4DeDAd0RriYN6tu7uqbt405Os4xYy4LcgvkBeZwhaCjO07wvQmWuh
         i3XMMVQnFIOpKWaSnEZ350gBprRbJQHARJ2G+H16mO6qLNYTp0XazNlIVqdyLxkFZWvQ
         dV0FCKHAXyyP859M3RGl34CyVBX7A0nZruQyievCdr/h+eD7TBbd8mqFGkC9YjYuZqDC
         fTJ87sK6FrKvXjTyAGeSSPOB/1DUSTVD6EBruSGG0bJRSF4kEDPnXMLMbgHk15OnnmM0
         5QlctmCODBU9hVLD4dIaSwkX7w+o/duQRDtNv0uHO2EH7K3HAcwKK2kd0jTxRtVL8B2G
         xslw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zXRGEZPwLtQ5UinxPXKU5BfJwpOCdWN4x79WEBjhqjE=;
        b=lzT6YpteIqrMrCFSv9v3ZR/YKRTlmDx144WLF/kDU61PsCuSxOWhC2r1orLbnzHDrI
         7GX9KORV0aG5t6qpW8NKnUAZMVRGo7jaH91/KZhbVVQ8Q/9JYbd2FanIltIfoKKqTvwD
         dxVXcUKtH2OnNRog2B6K5V9ouQP4IxmOr8DOAWYi7ySrkZAdTHLUZ5q1lDiAp3IpT9mv
         8J1Ff/3EwIb8rrEgYL1jUa6OTsRigJ2ESpS8OJuRJbJ/+Ke8s+HVXJcWoOmu6f6qn1hc
         vxIIYe8BUYXPioY8XRpBMfFcsTPrH/N4anCLnLe/CUDzPOrtBcf3njT+Q0ygzv9t05tt
         R6WA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MBtV92rB;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id r14sor1715990wmh.25.2019.09.05.07.47.00
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 05 Sep 2019 07:47:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a1c:ef13:: with SMTP id n19mr3424489wmh.48.1567694819611;
        Thu, 05 Sep 2019 07:46:59 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id y3sm3568846wra.88.2019.09.05.07.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 07:46:58 -0700 (PDT)
Date: Thu, 5 Sep 2019 15:46:55 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"Cc: Android Kernel" <kernel-team@android.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jessica Yu <jeyu@kernel.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Lucas De Marchi <lucas.de.marchi@gmail.com>, maco@android.com,
	sspatil@google.com, Will Deacon <will@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-modules@vger.kernel.org,
	linux-usb <linux-usb@vger.kernel.org>,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>
Subject: [usb-storage] Re: [PATCH v4 08/12] scripts: Coccinelle script for
 namespace dependencies.
Message-ID: <20190905144655.GB136369@google.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-9-maennich@google.com>
 <CAK7LNARgxoXAABNXhO-LzxAm8rh6NJqAm9-iMo2=t2c_6_KXtQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK7LNARgxoXAABNXhO-LzxAm8rh6NJqAm9-iMo2=t2c_6_KXtQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MBtV92rB;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

On Wed, Sep 04, 2019 at 06:53:25PM +0900, Masahiro Yamada wrote:
>On Wed, Sep 4, 2019 at 12:07 AM Matthias Maennich <maennich@google.com> wrote:
>>
>> A script that uses the '<module>.ns_deps' files generated by modpost to
>> automatically add the required symbol namespace dependencies to each
>> module.
>>
>> Usage:
>> 1) Move some symbols to a namespace with EXPORT_SYMBOL_NS() or define
>>    DEFAULT_SYMBOL_NAMESPACE
>> 2) Run 'make' (or 'make modules') and get warnings about modules not
>>    importing that namespace.
>> 3) Run 'make nsdeps' to automatically add required import statements
>>    to said modules.
>>
>> This makes it easer for subsystem maintainers to introduce and maintain
>> symbol namespaces into their codebase.
>>
>> Co-developed-by: Martijn Coenen <maco@android.com>
>> Signed-off-by: Martijn Coenen <maco@android.com>
>> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Signed-off-by: Matthias Maennich <maennich@google.com>
>
>
>Without any correct dependency,
>this does not work.

You are right, 'nsdeps' needs to depend on 'modules' to make that work.
I will fix that in the next version.

>$ make clean; make nsdeps
>cat: modules.order: No such file or directory
>cat: ./modules.order: No such file or directory
>
>
>I do not see any point in the Makefile changes.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190905144655.GB136369%40google.com.
