Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id D19F48BCC9
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id k125sf96430935qkc.12
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sa542Gp4f5CyFZZr06w6OF3wBkQDMcZxKNItZLnXmddf6QLXg2kA5tUi6jbfnl5fGg
         OnKpyHu0xKqenCWj5az8h4d4k6UGv6q0/cyQyh0z0siCQfUImbnve9vtik+LAcek+xDy
         zy6D8PU5rPscdhBKM8qgeL2OQla62ywvBppm8nYmQ2GlI4RkGcwTMrZi0Y3n61SRaPFe
         DkwZLJqo+cTSxQQxXn0YJbVrMfFq51uWlrjcJv0bC6of5BwmAB5BGJPrVbGQU3ip8oIM
         6HhLu5DKvuV4n5H3q2Ai0T5w77wuh8QuPwUi84x7xsMuL1xGuUPfAaQPBUpSLI3Y9jHn
         ePAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=UsDEZlyOEK7SAXhrhTsAgDwB3b60hIG0D0HrtZvKLww=;
        b=kHTpG0mEmAbdj2T3LlS5fWS2VjgKJaEKJ0xnvIhyHHfj9kJ1m/cegtLoZRBg1EnAkI
         G+kRR5BTYsfQl7BDXpVCdQ/hlrjwyVRFRqYe6lrvchfyktNkBO7hGKRxqGSfVQ5gnPrS
         6fVZIm5OrN5LE5OmYOrtrenjaCTTxVN6Bc9ggNPzrZMLhLDVKtP9MFJv1W+Yi0DLHU9C
         eH6MVebjB/mwKsUCmAPZcGq71+86XUsRP8Iq9SoA76YU8dHc1zhLxRGFakwFNncCWXbq
         7Ng7Z+lS/mCONCXb5TVBfV9RwnVIlfE0RticRZ5sq/GqOGiU8L++JxsSJMq82HFTgi4u
         rkQw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t2CeC6mt;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UsDEZlyOEK7SAXhrhTsAgDwB3b60hIG0D0HrtZvKLww=;
        b=h1dXNXNJSs/Z9k1560auJ5loEnSHonJ7IIGHHVJxWsgml404ySn5yJMUItmi5SlzKA
         iN3F6aQdS32zbaahsuvYleGRhNrk9vqF5lO8Bil4iXbVN4yCRYFjPVPH+Thrx+wXzEgi
         Gh50AysgW5NVFlt/pu408HX3C6ffgbw7DG1ys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UsDEZlyOEK7SAXhrhTsAgDwB3b60hIG0D0HrtZvKLww=;
        b=JfjbqPE/G5P7Npsu8iV4j3MZzf7zWO444y8xR7I3hU0dDhaNzPWT45/osikyB+17BM
         STuIbdbaotYZFPbAq4ZfMigOjTBAy2lzOLiYpDuWs4jWUL9E8S0j+4RjI7hb3ZF5ZbcV
         5e9wm6FKbKdeL+3PlngjWDoKOzgijRm+aoYmoLzJ25lU+qWThmWqgNvSKBXhFycuABmH
         /lnOJodzSq2wUPbuN6a0CxIr3q7iJV9Vlm4TzRSeUjhy5tJt7SDdcPfYz/qY/yM912JO
         fVmytFZgnTA9qxmUIenRzoSmPZ+KrxwNLro2Yje0gY/G0QNk8NkRhSUt/PzGmTzTEDOJ
         AOOg==
X-Gm-Message-State: APjAAAUuR+54mnjftYgIlqyq+Fzj5rsrjeLfGHRchy7GHSGK9LgwOGnD
	lRhWvGP+jv44xY4rZkn/LgvZgg==
X-Google-Smtp-Source: APXvYqzP9Bl9HfsNB9c+zR+1V84gd7OIt3kZhxD1pCjovrhDhGeZdfJK7aTq2+eb0R7KUxShkV2Xrw==
X-Received: by 2002:a37:48d8:: with SMTP id v207mr32884641qka.316.1565709217704;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:294d:: with SMTP id z13ls5732637qtz.11.gmail; Tue, 13
 Aug 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:ac8:7344:: with SMTP id q4mr12450763qtp.338.1565709217456;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:a37:a54e:0:0:0:0:0 with SMTP id o75msqke;
        Tue, 13 Aug 2019 08:02:27 -0700 (PDT)
X-Received: by 2002:a5d:494d:: with SMTP id r13mr39531695wrs.82.1565708547528;
        Tue, 13 Aug 2019 08:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565708547; cv=none;
        d=google.com; s=arc-20160816;
        b=M0+pWiHf0HDyMIcuw7uguaotdjIo+1Stg/6hkt5YV1GixXGTuQkDvHh6fZBjQiuOIp
         nrSeXtPRW9ppxEXeSZvvSx4m0wk7vr41/F6FpHAl8MGVIzD39tFlGT96e93YTq69KRUc
         lwIhenq6DhzDLjKHZJZLQMAh/yMYaJa2Xmgyte6tgw3klW3vuZX5UsBBdAtPecRG3bSQ
         ltB9qCb3hN7PJ1Zdg1DEzq9YZU+inFwHZrYlI7UFcdzuTqoi7Vioe/Mr8GYrstUgKPpn
         qrARnAYXVFQbGfJ6ezjZEFVrw69qyyKoquIZLp/Vv2mtbUq9iWEo6q37gYdMAkhASMrO
         /7+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Z7Dmwu3NvM4EVDKo63p/xdtZ+TtWJUXj2RkugIVOSr4=;
        b=JZUnGcDHitVzq3KY5CqtPxE0DPBkTKA1OT/FRDfFxY915poftLLOfgMPJDc0erl4Mc
         OXQbRU76q61OKkEV3s3Si8QP5D74jdQ5IH1QsoEj5SZPPOcsx2XGzR35xwodl170pcQv
         1jxebVh0433NjZ0H1giOwCFSqPbvat7RbEYtdQvx59CO+gPFakyxqTcynRlhZf1k9FUO
         SCsQ7DlIMgvudC7KtOzh7XT/1e4C0rK//LI3qwGzigTLTMRzjXPaWZU6l02FVlKDdeeI
         UI6PomevZKT9ZTPyT4dXUnHZdySERSilfH2qCWboAhhjx9rSU2VywftZOP8e6XCCbOV+
         kD0w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t2CeC6mt;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id z12sor85650206wrn.17.2019.08.13.08.02.27
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 08:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5d:670d:: with SMTP id o13mr36840270wru.289.1565708546723;
        Tue, 13 Aug 2019 08:02:26 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id p13sm42846847wrw.90.2019.08.13.08.02.25
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 13 Aug 2019 08:02:26 -0700 (PDT)
Date: Tue, 13 Aug 2019 16:02:21 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, maco@android.com, kernel-team@android.com,
	arnd@arndb.de, geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sboyd@codeaurora.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v2 10/10] RFC: usb-storage: export symbols
 in USB_STORAGE namespace
Message-ID: <20190813150221.GA107461@google.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-11-maennich@google.com>
 <20190813124708.GC12475@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190813124708.GC12475@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=t2CeC6mt;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Tue, Aug 13, 2019 at 02:47:08PM +0200, Greg KH wrote:
>On Tue, Aug 13, 2019 at 01:17:07PM +0100, Matthias Maennich wrote:
>> Modules using these symbols are required to explicitly import the
>> namespace. This patch was generated with the following steps and serves
>> as a reference to use the symbol namespace feature:
>>
>>  1) Define DDEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
>>  2) make  (see warnings during modpost about missing imports)
>>  3) make nsdeps
>>
>> Instead of a DEFAULT_SYMBOL_NAMESPACE definition, the EXPORT_SYMBOL_NS
>> variants can be used to explicitly specify the namespace. The advantage
>> of the method used here is that newly added symbols are automatically
>> exported and existing ones are exported without touching their
>> respective EXPORT_SYMBOL macro expansion.
>
>Ok, I can't read text, this answers my previous question.
>
>But, as an example, shouldn't we also have some code here that uses the
>EXPORT_SYMBOL_NS() macro to ensure that it actually works?
>
I will create another patch for a different subsystem where the use of
the macros is more appropriate. Then we have both use cases covered.

Cheers,
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813150221.GA107461%40google.com.
