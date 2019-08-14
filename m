Return-Path: <usb-storage+bncBDMYPB44VAFRBQMAZ7VAKGQEIIIBIJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 7701C8CD7F
	for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 10:03:14 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id m25sf1026760wml.6
        for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 01:03:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565769794; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUi1Je101T014TfAYMgypeJxNCMD1bkreoXgLcHzUaYsFQK62tGGoEWU1huGAOiGOr
         bBuQ8o0V6BoPUUxyBQSBkk1RaROqHOwkFq2Xarq/AZhKRZ6C6w5WOSFocvSQ3u5h3qde
         e/UwXlrYtVrSPRE8ro30KKB4rmDE6blAl1hPKez8saFcbByAH+pV/rdWPRvOcg0AZGd2
         aHBPEX0H9xkm5u4n7hha/wf9e+LgtUaGDcjaJ3HEpbm5rtf0T6cpxdtP97DYVFJzDsET
         H9AIfjRNNpdXT+ytL3rpCZx188bPDBk0AMzkVqvRUi2OqYJLvD3Y1xC6jeu8F+KS/Rrm
         MDmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=09+X6C9cwzu1RSspqrPkuKICHg5Lnj6BekDaK4R8M7o=;
        b=qxNMr8kOUD9v3H3lrnFqwK8F+ItO/itrfXlncY2Cr784+cWERMaCmY5ByN9Cv8XStg
         amYtZpwny+ztoL/aGqd8IKRc++9fZPF4q2a2/tkRvpdRjm8q3t1hqzziRhPilORqM11y
         J98BqS1w3ViDey2TqyjL3+K2xVMIiQBpT7+C7JGLmqEFclPklsacR1b/pOWlzrPH7Dws
         nBn9cV8njna78Z60mdD0Z6RO5rVFlLD0SJsSU78CpAX2DGZ9vqtYYxaAlhx8+8k7d7GM
         5mczZIXKZcoOtiQ1nlpBK7ZvENg9k129dKv8ZeFtDD8QbO1F12G0wyW4y3Q+cXSYx5MV
         MQPw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aBPUev9Z;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=09+X6C9cwzu1RSspqrPkuKICHg5Lnj6BekDaK4R8M7o=;
        b=V12ah+0CgBHftWkJxyDJShSVuOdGa8xDpz1Xk/5Ftyw+vhjRciOI3wFqL/sM39wYwc
         ZhZvKMRs5rUSKKoSe/Q4LENLPBrMUGF4YtlRAKNOsyPV0hkGMVrpm212pOk+WWa7fxIK
         FSkcLimwWrOUTpCEVeh0wRhVIAei9Q6LT0uHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=09+X6C9cwzu1RSspqrPkuKICHg5Lnj6BekDaK4R8M7o=;
        b=BnDrjm/KzAbPql4V2BSSNjrg3ffh4K8KGQD+ocfFAUGF+xL+EtpOKKbZILO4e2Xrkr
         C3xACUeuBqEytQNQF6WtOwm/swCLWLgxfUkicWyZpMgxHgh7oJQujoWaxAAGCAFaVYO2
         BW3GSHJJ2KtclQC5IcMsWlB3LuhdGbdkWtLemTaxHfQ3RwDnrH0pupeJBb3OBUiGEuzH
         o4OpSy+aKzZB59ZpeBbH0/KRrzcCU5xXxn8pCQNPGv3/rfTYMiJ36yk2d+eOBvycZDbn
         YkDZ/xF38Lnrxrv1FY9P5zv3e4eoUkbJpTTesTdy4Tuk1YULK3TrwGvtuf2aTnsxtAbr
         BtVQ==
X-Gm-Message-State: APjAAAXAGJy33hF02uAX4X+5rqsKda7UCMiGVMgRO+pdb5FWdJcfEvm6
	m7KIxaD/NRx1jUkYCGohxx44yg==
X-Google-Smtp-Source: APXvYqyCNzBqWg5J3qPEvJgTYfFd7mVfY1iI1w0o0COsHbAXP5XYcelNvdtxG0GLUzQnRsPRLD5tGw==
X-Received: by 2002:a1c:7d08:: with SMTP id y8mr7400786wmc.50.1565769793963;
        Wed, 14 Aug 2019 01:03:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:7018:: with SMTP id l24ls478648wmc.3.canary-gmail; Wed,
 14 Aug 2019 01:03:13 -0700 (PDT)
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr7238866wml.175.1565769793216;
        Wed, 14 Aug 2019 01:03:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565769793; cv=none;
        d=google.com; s=arc-20160816;
        b=xqy1rwCwzDVPD5tPndjxsOtrjI8ATlCA+NxnyKq242m5ubbS1769iDD79z5I0tV4YE
         lui/KvAWtOhvYh4x8TxcadnWtrZWK5asbEoRyq+AUmO635iMLp7lNcHAGOM0MWAsIbGX
         BdTQyrD/JziHAKQRi+okynaQKod0KL7t17/i0yQ1Uh6kL7Fr0sDSUKyc5j02WM8pLXQ6
         a8gooZDuVEx6MH2tdp1Mj0CsnEn5d0iKI1fbMvdeiL7A+Bmf/md2UY0XUWSmrk69WS0X
         lQgbgIESPFqRtCutE7GIBa15nd5E9qlfI6KXvIySNJAOaLvbXwaaQsU062YMi1Sp8hFE
         LIhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=u1kTruUi3YdB800wT1pXkaOjMSivOUWKVyyY/Zt731g=;
        b=MNQ1/dbClgtodr/SXheydQGevlQp/CZj5baHOToRgvNcBqapk81ZpiUBjHJSitES+s
         d9z8CWEUiYAbo61mruYMlhBvJQKcfA+ZFSwx/eVNeAFfxbahJ63yWdhpGqQcjPZ2kqu3
         cDHS8mRRK94AoiJ97utwVinofGrpO9hFxtUAQDrBOT6ns6a1yxqT87kRGenXPXVfRyKy
         jmZpcgx0aDJsvWvVeA0BqbkXMUmEYPXXbL3Gd0NpFYGtz0rD/Wpk7OxDQj/meTdJdaHQ
         riUZ10gI4+PfqP7/0OFxdTW1MirrNXOJVuijZMdCVgTvfKfSXQFojb6UsXmTUvXAFul7
         uN/A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aBPUev9Z;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id c2sor2389229wmb.26.2019.08.14.01.03.13
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 14 Aug 2019 01:03:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a7b:ca5a:: with SMTP id m26mr6573824wml.134.1565769792542;
        Wed, 14 Aug 2019 01:03:12 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id 39sm28546562wrc.45.2019.08.14.01.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 01:03:11 -0700 (PDT)
Date: Wed, 14 Aug 2019 09:03:07 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: linux-kernel@vger.kernel.org, maco@android.com,
	kstewart@linuxfoundation.org, linux-m68k@vger.kernel.org,
	oneukum@suse.com,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	usb-storage@lists.one-eyed-alien.net, hpa@zytor.com,
	joel@joelfernandes.org, sam@ravnborg.org, cocci@systeme.lip6.fr,
	linux-arch@vger.kernel.org, linux-scsi@vger.kernel.org,
	x86@kernel.org, lucas.de.marchi@gmail.com, mingo@redhat.com,
	geert@linux-m68k.org, stern@rowland.harvard.edu,
	kernel-team@android.com, sspatil@google.com, arnd@arndb.de,
	linux-kbuild@vger.kernel.org, Nicolas Palix <nicolas.palix@imag.fr>,
	jeyu@kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	tglx@linutronix.de, michal.lkml@markovi.net,
	gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	Nicolas Ferre <nicolas.ferre@microchip.com>, maco@google.com,
	pombredanne@nexb.com, "David S. Miller" <davem@davemloft.net>,
	linux-modules@vger.kernel.org
Subject: [usb-storage] Re: [Cocci] [PATCH v2 08/10] scripts: Coccinelle script
 for namespace dependencies.
Message-ID: <20190814080307.GA2911@google.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-9-maennich@google.com>
 <20190814063611.GA22387@himanshu-Vostro-3559>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190814063611.GA22387@himanshu-Vostro-3559>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aBPUev9Z;       spf=pass
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

On Wed, Aug 14, 2019 at 12:06:11PM +0530, Himanshu Jha wrote:
>On Tue, Aug 13, 2019 at 01:17:05PM +0100, Matthias Maennich wrote:
>> A script that uses the '<module>.ns_deps' file generated by modpost to
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
>> Signed-off-by: Matthias Maennich <maennich@google.com>
>> ---
>
>[]
>
>>  MAINTAINERS                                 |  5 ++
>>  Makefile                                    | 12 +++++
>>  scripts/Makefile.modpost                    |  4 +-
>>  scripts/coccinelle/misc/add_namespace.cocci | 23 +++++++++
>>  scripts/nsdeps                              | 54 +++++++++++++++++++++
>>  5 files changed, 97 insertions(+), 1 deletion(-)
>>  create mode 100644 scripts/coccinelle/misc/add_namespace.cocci
>>  create mode 100644 scripts/nsdeps
>
>[]
>
>> +if [ "$SPATCH_VERSION_NUM" -lt "$SPATCH_REQ_VERSION_NUM" ] ; then
>> +    echo 'spatch needs to be version 1.06 or higher'
>
>Nitpick: 1.0.6
>

Good catch! Thanks!
Actually it needs to be even 1.0.4, so I will just use
$SPATCH_REQ_VERSION from above.

>> +    exit 1
>> +fi
>
>
>-- 
>Himanshu Jha
>Undergraduate Student
>Department of Electronics & Communication
>Guru Tegh Bahadur Institute of Technology

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190814080307.GA2911%40google.com.
