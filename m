Return-Path: <usb-storage+bncBC7M5BFO7YCRBP6UX3VQKGQE73EH7BI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FEEA81EC
	for <lists+usb-storage@lfdr.de>; Wed,  4 Sep 2019 14:12:49 +0200 (CEST)
Received: by mail-pg1-f199.google.com with SMTP id u1sf13078662pgr.13
        for <lists+usb-storage@lfdr.de>; Wed, 04 Sep 2019 05:12:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567599167; cv=pass;
        d=google.com; s=arc-20160816;
        b=iVeZecLIly2e/XW7OTsRWvu1fFYMI2HuA7g90JZsT6hIKhx1oR+HCbuyGUx3NqkwIh
         H89e5GL+B9563Exe6rC/kTOVMK0wACSu2wzYDWIums1eFyD2K2wA9gJII7xlbPVVhNbD
         tXTdM+DWs8l/Stx3jycaL52X/Ll7c7h69HiMAwGiJH0BnxVUxp85E4OqQ9dUNQMqmDBK
         5l2NKFpd67L95rO4VY0U/PBrMTwOWy5M9ZBBmmkWp4PBV4/2nm8I52SR0ubOWRGp9j9c
         XcKOpePi+new+WxfsvGUkoSXOest2lbjSmnF34wy4vWJkNMF+a0o9mr5QnFd1heGJYer
         sZIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender;
        bh=rcoKugBrusvGctwYig2sXUDb2slc/ncq/b0a/mfMeYc=;
        b=wcBw6FRpwgIbjx5pBG6thpd2l+N48RThyzNwsz4iPLj3NSC0Rq9ulTjbLhlhPY+OD0
         +UhS1/cWqjo2wi7USIqnRPl1c3a7fDsQXDjZeTndl60HT5bECml8wgncEG+Dd8n0YDe8
         pROxLislE6lRHGcYoTUV3W0vjVvhhDDKW9G5QCn/Ru51vhe3gvBinqmSsTNGKhR2bH9z
         9x+aDZ19zn2eDT+YEuDdIIWgp+SwKLseGmMGlG/9ldG6R2tCYaV9/lHPZVgfGGPXSz74
         v/F/OluVdY9ZnrI9I9dqcHHCSTYkn7CtdhC2iBxDBH3LLkhDkf4Nd9w60cY5f3Hh0Ljv
         YTqA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odUTXruY;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=groeck7@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rcoKugBrusvGctwYig2sXUDb2slc/ncq/b0a/mfMeYc=;
        b=Lj/vpFEmnxruvksrWE3HE1uKYSc2dcQ2LCw9TmsJqvJ8A9cD2rQXncOnaK6ML1UV0P
         tZJjpLWSu/aBG4S2v1Y2jtQ2fJ3TbmfyeDLKjwaOVZdBLxb6DPsK8jxgLLlXuIEQPfY8
         Mzf7sxqCFdLasDPerUIcl7Qup1dplUZjBVmLi79VLWVjryPWAFocFZLdRdZ+V/ixH7Ii
         xldc0I4mrdlLA7i43kOF7F4+g1BD2gEws/UFMeBk6FMp2kA8GzLwPuF1ndlBfw3r8R6S
         LAChfwxPH2WBIrBcyf1CBZ5+Wrew9tpYajfcM4q13M8MeczSixMM6WsVx4KZuf4BenmD
         FSgw==
X-Gm-Message-State: APjAAAW8RY5u3IMbiHdcNsPwvaqnuzAwUWWmHAznIeVl/pbI15gWWAYZ
	qYwIQqbL2L7plS82Ihn697tzHw==
X-Google-Smtp-Source: APXvYqwPgP8+90/iKXSU6y4NKxoRb7f8jB9EsjKZBcDeA+FK6lDyUoYivcSIDsMwJz0IrgEFJoatqA==
X-Received: by 2002:a17:902:d898:: with SMTP id b24mr41650889plz.7.1567599167696;
        Wed, 04 Sep 2019 05:12:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:9611:: with SMTP id q17ls3427399pfg.16.gmail; Wed, 04
 Sep 2019 05:12:47 -0700 (PDT)
X-Received: by 2002:a62:4e52:: with SMTP id c79mr20798001pfb.28.1567599167118;
        Wed, 04 Sep 2019 05:12:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567599167; cv=none;
        d=google.com; s=arc-20160816;
        b=lYVo3TO6n+BMtrgJXaeb4WXz5NBvKyAUFI17jIzXnISjM9klnmD/hz7aOKat8vcBkh
         W7f3mEtwMRxuc37K5LBjpRn101osKjoAVYMdBBj1YwmjyIBhVDBoTdAzz82Zgr+aWvVP
         0v7Tx3AlJE9EZmaoJaLBSDiuxcOibL1BP3FzUpgMdIqhB7/5aeUObmS8Q08kFHp61nJj
         vqPnaLVbZuys1wr5buhl5ZQbdoIIfqwTxIdGJVg5TzlcBnEoF6i2Hyg1XSFuv6mMkfti
         jH6w17CPggdsO9DuYUzRSwmWg5/27cx4/mWHCqgL7Q21vrwjVNtcEUiwwdcBM/GHE3+d
         Kq9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=PAQW62HDl0bciuqP6fN46/O4uLjRbfz/e823ZKZ4uxo=;
        b=y+CD7K5oz08a+Vnu+rfUkKTtgnWz728neotuQY8kpY/I9zFASPhjKw6GrFcK0XKSbg
         mxG/rmaqAufM+TDUEzrRgsAu7wwGTH3gWXxU+112ywrms/y5/j6AdTUxQp9aL8o/kt/6
         SokeuNkuRMUwFxbMr8/kWvizbiDMqJNwk74w0e8ZK862vrZjkLVoxJUIGU8gAxMWa/y9
         pavorf/6/pMyJMOvgMheanyIIR01Rg0lyRLxdBm09ApznZI5Ym6iG6SmTfLrCQDZkSWl
         gz+75z6cGJrcIjiGFEEK7OmbuyPkBVCQZUQz5UlVxkoCi50YF+6L0iyC0S07Mb8Rx+wu
         Hvig==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odUTXruY;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id m29sor11589023pff.72.2019.09.04.05.12.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 04 Sep 2019 05:12:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a62:7a12:: with SMTP id v18mr2313087pfc.205.1567599166796;
        Wed, 04 Sep 2019 05:12:46 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id x5sm12419072pfi.165.2019.09.04.05.12.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 05:12:45 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: [usb-storage] Re: [PATCH v4 12/12] RFC: watchdog: export core symbols
 in WATCHDOG_CORE namespace
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Matthias Maennich <maennich@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Cc: Android Kernel" <kernel-team@android.com>, Arnd Bergmann
 <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jessica Yu <jeyu@kernel.org>,
 "Joel Fernandes (Google)" <joel@joelfernandes.org>,
 Lucas De Marchi <lucas.de.marchi@gmail.com>, maco@android.com,
 sspatil@google.com, Will Deacon <will@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 linux-modules@vger.kernel.org, linux-usb <linux-usb@vger.kernel.org>,
 usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org
References: <20180716122125.175792-1-maco@android.com>
 <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com>
 <20190903161045.GA22754@roeck-us.net>
 <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net>
Date: Wed, 4 Sep 2019 05:12:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=odUTXruY;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 9/4/19 1:45 AM, Masahiro Yamada wrote:
> On Wed, Sep 4, 2019 at 1:10 AM Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> On Tue, Sep 03, 2019 at 04:06:38PM +0100, Matthias Maennich wrote:
>>> Modules using symbols from the WATCHDOG_CORE namespace are required to
>>> explicitly import the namespace. This patch was generated with the
>>> following steps and serves as a reference to use the symbol namespace
>>> feature:
>>>
>>>   1) Use EXPORT_SYMBOL_NS* macros instead of EXPORT_SYMBOL* for symbols
>>>      in watchdog_core.c
>>>   2) make  (see warnings during modpost about missing imports)
>>>   3) make nsdeps
>>>
>>> I used 'allmodconfig' for the above steps to ensure all occurrences are
>>> patched.
>>>
>>> Defining DEFAULT_SYMBOL_NAMESPACE in the Makefile is not trivial in this
>>> case as not only watchdog_core is defined in drivers/watchdog/Makefile.
>>> Hence this patch uses the variant of using the EXPORT_SYMBOL_NS* macros
>>> to export into a different namespace.
>>>
>>> An alternative to this patch would be a single definition line before
>>> any use of EXPORT_SYMBOL*:
>>>   #define DEFAULT_SYMBOL_NAMESPACE WATCHDOG_CORE
>>>
>>> This patch serves as a reference on how to use the symbol namespaces.
>>>
>>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>> Signed-off-by: Matthias Maennich <maennich@google.com>
>>
>> As mentioned before, I am opposed to this set of changes. I don't see
>> the point of restricting the use of exported symbols in WATCHDOG_CORE.
>>
>> Guenter
> 
> 
> I agree.
> 
> I do not like this patch set either.
> 

Note that I don't object to the patch set in general. There may be symbols
which only need be exported in the context of a single subsystem or even
driver (if a driver consists of more than one module). For example, a mfd
driver may export symbols which should only be called by its client drivers.
In such a situation, it may well be beneficial to limit the use of exported
symbols.

I am not sure what good that does in practice (if I understand correctly,
a driver only has to declare that it wants to use a restricted use symbol
if it wants to use it), but that is a different question.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a%40roeck-us.net.
