Return-Path: <usb-storage+bncBDMYPB44VAFRBCMJ2DVAKGQEEAX57OA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 7706F8D3E5
	for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 14:54:34 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id o5sf1841519wrg.15
        for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 05:54:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565787274; cv=pass;
        d=google.com; s=arc-20160816;
        b=UaQkqSXe5vrthOreoV4qTjjx9gKlRSwRYkmaS1wfGBrHnKyOXSRFDfkX4RuGiPzIRp
         BaqqSwdbkSWkKYVp9eSnAQFl7YMRDCjXkYH0EBgaemEm7ZPqNcb9OlK/Zg0+nORIpMqv
         adQSvoHCBiIGqPj1T4rWUBDFj1g5MajCQvLdkdwVzqKvBfuizGodIRbHCfTkdDZ16n1Z
         TbqybU9xulI0LXA0gYEjetNAo6m5YxUhasi+kaF4jLi1fGN0dRGYp8hON1iYY+H6xZPY
         reJnqa+/huVzPZRROfAvkmFeEpV20Sld9i6wws0uwXy68r8yuS62xSJLDG5TodYr+UpN
         O10w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kWmZkoX9LMRQgr1OpaQHN//IEYxfO1xjeEB4EPVDD7g=;
        b=BRaYEHbqQxM0TWht/zoqOwnSqaO+OzfAvmXJI9J/rp9ZEp5a2Et8Nrit59BV39WKYJ
         /qt51dJIVG7vShRA54XO/XRb+5icxm1XG+VVtp7mko3TA6iS5JupONuUq2+REFtP3YPH
         mz1CkYJmHL0ibPO3Hm3OczDhnNwMWsXp9odF8JVkzeNMHPZOXcTG4wE0tZHomFB9TeXY
         FsJyglJd1ZMGaBFi8XK4vi0Io6Rgz3UOIHNBMnbCPqXrSBOcpD49Bbvh/3fC3GwcJtHa
         XXqrycW3nCS0vb1D7WW/HNLTPuuVx3vJ++xtur6kC9EwzqTea82MMCpPTdIRtC5Mjj4O
         3eUg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a214pvbW;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kWmZkoX9LMRQgr1OpaQHN//IEYxfO1xjeEB4EPVDD7g=;
        b=PJ4ilgl4bolY/ljQ30cLiKmPiae0/egrkuIVO1RUp2YYd6h6mf9jJjWFFgFxKLH/re
         lsBGj7/DI+XEreEcbkX/Cu/Zbq6dlZPVaDbkJUkd4JepVmjtGGqdcT7ANEKKoLjLeJu3
         HenYE6/Qyor/L/Fh7whjFD2cAkx3wXQyq6WUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kWmZkoX9LMRQgr1OpaQHN//IEYxfO1xjeEB4EPVDD7g=;
        b=ZTd0yAWWxwLpaIDi8fw5L9e+kXbDjK8hxIMWuRJpIKV7yzxxnfH8rmxge8o7Wdp9Ak
         HOqYiDfYOO4JdxJjq4bTx3/Kdu1nauVjTuM12nc36Z6cobEjhj2XbOQNaKIocE46kQfb
         NaxWxIqvc4mkvxBXDYGle+z+puYWAoOjSsRrN6KtwHEpWBeY1IJcIoCcXcd/ejVogcg5
         I+Ro4709qZe9no8lJaQEUm8LG3i87IVO1Bs5ZQRXbV77pdM8/nS43Y3SnAOEoyns0FFa
         xd/SGFw+6FF+v6NI29fBqj0wn+B8X87tSMgxGkJUVkBAZirRcMEQH+YNGlAwo04e504X
         btgA==
X-Gm-Message-State: APjAAAUavZwyRY0eGIMMQReM+zht2icv6/UfyM7RELKhy5qJEywxci5E
	jBerZtK/jkjEZGzA0FsvTLRt7w==
X-Google-Smtp-Source: APXvYqwsaIWWiXywr9zKx3PtUdEeDhcHMvbSTx8sTQON6Ht3mRhp1/hPNqW7iHdSsWhZLP0vqd2J1A==
X-Received: by 2002:adf:ce8d:: with SMTP id r13mr52676519wrn.37.1565787274131;
        Wed, 14 Aug 2019 05:54:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:4404:: with SMTP id r4ls761447wma.5.gmail; Wed, 14 Aug
 2019 05:54:33 -0700 (PDT)
X-Received: by 2002:a1c:740b:: with SMTP id p11mr8548033wmc.6.1565787273434;
        Wed, 14 Aug 2019 05:54:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565787273; cv=none;
        d=google.com; s=arc-20160816;
        b=UuysAirgY35vkpXzki3Y0s32YwH+tPvwDR4GZA0THYHdR91aNUnnxf9sqohZCvpwPy
         Fr2J7LA4DZ5WBHF4GS5NGTqUHJBjqyog4Hm4wriYuYfQ9XLjqjrPdNoNpM5HH2kXnk0A
         q1STyCg+Kgc3+9ZdCwOW2PYlX9+lMdIziDQnybTe2zXYyW1dOlAUyE7bz1utUB+4oZzf
         BfZ70VE4UwOM83OoUKXphZE0X0Hjzdr2+CehCsmWQscYq57k+G0tRd/1qKgoUotGuS8c
         P5KW6poa+3VQBDEL3uESe79iCdPG0MFK6p/2m2BXM/2tsytjM8onWsDxuIEhdgE2bEah
         cU7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/HqwVHo+/VGU/O3Ao2yHcSMYTRRkF5dGkjofFJ4lQDI=;
        b=bIMdY//UFWLkIQDGxI+7dikwL+hhRecTbzgPOM/7BwjHp0Ocjz+vh2Ywtau8RCiXQ0
         nD1SabC4b38QhsV6elL+sTzEA54egT/S0oS6dSmxjwV1OahPD3DRvZE1FOv5j5zaWv7D
         yu0eIz4dg7CUWy4PV0oexe9wvswwO/SYPEHtzUShdvqwyuW1//4DhOyqfigzOf7yU3gL
         MRKhp7vR+qmB55vUciPWg3OWkD5jBw9baIRTjBJuLdicnH5D1Oq6/chnP8Le7GbgKgN1
         HcIj/QZa4YwteXZojK7Oeiu4KEaI7wE9f9tNbJyQ6E59km3yBiq2hc7fvPlYFvWUZyR6
         YZlQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a214pvbW;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id y2sor1150308wrt.22.2019.08.14.05.54.33
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 14 Aug 2019 05:54:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:adf:d1b4:: with SMTP id w20mr46171829wrc.301.1565787272814;
        Wed, 14 Aug 2019 05:54:32 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id n9sm163817113wrp.54.2019.08.14.05.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 05:54:32 -0700 (PDT)
Date: Wed, 14 Aug 2019 13:54:27 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Saravana Kannan <saravanak@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, maco@android.com,
	Android Kernel Team <kernel-team@android.com>, arnd@arndb.de,
	geert@linux-m68k.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, hpa@zytor.com,
	jeyu@kernel.org, "Joel Fernandes (Google)" <joel@joelfernandes.org>,
	kstewart@linuxfoundation.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
	linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, lucas.de.marchi@gmail.com,
	maco@google.com, michal.lkml@markovi.net, mingo@redhat.com,
	oneukum@suse.com, pombredanne@nexb.com, sam@ravnborg.org,
	Sandeep Patil <sspatil@google.com>, stern@rowland.harvard.edu,
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net,
	x86@kernel.org, yamada.masahiro@socionext.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Johannes Weiner <hannes@cmpxchg.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	David Howells <dhowells@redhat.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Adrian Reber <adrian@lisas.de>, Richard Guy Briggs <rgb@redhat.com>
Subject: [usb-storage] Re: [PATCH v2 05/10] module: add config option MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
Message-ID: <20190814125427.GA72826@google.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-6-maennich@google.com>
 <CAGETcx_LQDdnaU+3JVGw+6=DJ8tRoQ00+3rD2gOiHHkWomt8jg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAGETcx_LQDdnaU+3JVGw+6=DJ8tRoQ00+3rD2gOiHHkWomt8jg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=a214pvbW;       spf=pass
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

On Tue, Aug 13, 2019 at 01:15:44PM -0700, Saravana Kannan wrote:
>On Tue, Aug 13, 2019 at 5:19 AM 'Matthias Maennich' via kernel-team
><kernel-team@android.com> wrote:
>>
>> If MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is enabled (default=n), the
>> requirement for modules to import all namespaces that are used by
>> the module is relaxed.
>>
>> Enabling this option effectively allows (invalid) modules to be loaded
>> while only a warning is emitted.
>>
>> Disabling this option keeps the enforcement at module loading time and
>> loading is denied if the module's imports are not satisfactory.
>>
>> Reviewed-by: Martijn Coenen <maco@android.com>
>> Signed-off-by: Matthias Maennich <maennich@google.com>
>> ---
>>  init/Kconfig    | 14 ++++++++++++++
>>  kernel/module.c | 11 +++++++++--
>>  2 files changed, 23 insertions(+), 2 deletions(-)
>>
>> diff --git a/init/Kconfig b/init/Kconfig
>> index bd7d650d4a99..b3373334cdf1 100644
>> --- a/init/Kconfig
>> +++ b/init/Kconfig
>> @@ -2119,6 +2119,20 @@ config MODULE_COMPRESS_XZ
>>
>>  endchoice
>>
>> +config MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS
>> +       bool "Allow loading of modules with missing namespace imports"
>> +       default n
>> +       help
>> +         Symbols exported with EXPORT_SYMBOL_NS*() are considered exported in
>> +         a namespace. A module that makes use of a symbol exported with such a
>> +         namespace is required to import the namespace via MODULE_IMPORT_NS().
>> +         This option relaxes this requirement when loading a module.
>
>> While
>> +         technically there is no reason to enforce correct namespace imports,
>> +         it creates consistency between symbols defining namespaces and users
>> +         importing namespaces they make use of.
>
>I'm confused by this sentence. It sounds like it's the opposite of
>what the config is doing? Can you please reword it for clarify?

How about:

  Symbols exported with EXPORT_SYMBOL_NS*() are considered exported in
  a namespace. A module that makes use of a symbol exported with such a
  namespace is required to import the namespace via MODULE_IMPORT_NS().
  There is no technical reason to enforce correct namespace imports,
  but it creates consistency between symbols defining namespaces and
  users importing namespaces they make use of. This option relaxes this
  requirement and lifts the enforcement when loading a module.

-- 
Cheers,
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190814125427.GA72826%40google.com.
