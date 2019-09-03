Return-Path: <usb-storage+bncBCTPRFE7TUKRBB77XDVQKGQEEYQEYIY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 82199A667F
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 12:25:11 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id r25sf10262405edp.20
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 03:25:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567506311; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zv1LYEIM89CBloErnhoubTVIlGaMpHKoyhm+CAklj1qTHKhQ1HeGYEdYPQv24iwm6Y
         DjFnHWGNz0vHiEnxC4oUdPyet8MUw5Z1EWCnqI/k7BjfxBJWxMEHmssomldX1g3vkpNF
         PuqDVDKaZjKjjvITajo9jNeVbc5nHzjXtKKl0J2j5wapnva1PiESGvo9pPrNFnkzDLpF
         m/VKIgH0SNItHSil443DYB8tvGK7aM6Bn17mmCaggXMHv3X9SaQDUXRdWqUGhcLq/OP9
         F6CutITPxKBXQVZNlcmBPDCJ3NUZJeVzXMRf1NBXtwHifBkq8b1PECzUZnxjGb3NTzZQ
         AjTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:to:from:subject:message-id:sender:dkim-signature;
        bh=mqTOgLfhUwpGT2Y2aLp/xlo6tWZPiXmX751Uqj36eD0=;
        b=zDZWtpKol1gZFd4t9K/aLIFV0q0ma/90msS47bKL4FvgUmPWgcLIXmTy1rnyY0RXCA
         0vF0OElfVpAqLrXKUMxy06VA7B3C8RUBWANcYFpUMp8o37Gc6UckQwBZkwO3+2gIGzxC
         zo5Br21Ah9Wn3sL2oY3lBx6/KCttj4A62eXDFlVPhHt6uvQ3fTPADrA6HKTcOCey1kFO
         BdB/9rwkTTEZUysbY1x6VBqdJO6E+rZver1Mr6Lv4s0sj0mUBoOJ2eNDYTdsEwmOHXZk
         a927+gnjzMXUJNp38TWlnQoaDH8Ar7fzEUHsvGy6DuwMzO6RfNrjAu3N721gF133H1s8
         yf5Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqTOgLfhUwpGT2Y2aLp/xlo6tWZPiXmX751Uqj36eD0=;
        b=FwhygIVUV/2gf653TGE8zrWYnDBYYtALsrr2HN+rou7GHLkyIZVZkgokKaySenM1x0
         5UAH4n9XYaatpluEJhDa3qWxF2lKIPkUrzdkMCSXOYwFqO0tGztXyzNuVWzjjpLQHyC3
         RL0vyXE1cbAWjnCrYnyQm65xAihOpDOxoRlmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqTOgLfhUwpGT2Y2aLp/xlo6tWZPiXmX751Uqj36eD0=;
        b=elJRSbws8g8OSxT9HiCutIzL0c93kFtuT8YVSXrVeKrzJNgF0SM1Uz0uufo/4/IF8o
         w3VBelpL9yro5wrcWhoPJl24etaZhQpA0ScIR+U1toc+oN2eBIYLlCQ0HgQtXXNi5xZI
         q3GXwVEf1kG2EB8ICDOnKt4HfEw/3VrXcx376kpMcsQ612TlpYCf6B/neudAr+4Rx9Q4
         pAKu3sRZ1U0NhSp+HMD9o3f4AsTpP8T9nMveJ4mMjLQYkJhWpyPwQKomHdCgLtnMSdvR
         OKKqF4U6ikq+mhxtVOLMSC2GFIdL5JXB+o0j/mYOw3MvTCvGf1Pm+vuF1NkwAwUQlXfu
         3fZg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVBEYFQSuEWsgDu4RFOyFTIsIPsrgOWxDMz/JnwzUSMh/7hgl/g
	5DaZToYJoGsfvBirVj1jZFq8Dw==
X-Google-Smtp-Source: APXvYqxHtsK0DoHKQFt2grCHNuHmH9xfAKYzh0K3eo/vPsADBf4BneDd31gaEuVQvfgzpeJTEP2yXQ==
X-Received: by 2002:a05:6402:154e:: with SMTP id p14mr35197295edx.101.1567506311093;
        Tue, 03 Sep 2019 03:25:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:b794:: with SMTP id dt20ls205609ejb.7.gmail; Tue, 03
 Sep 2019 03:25:10 -0700 (PDT)
X-Received: by 2002:a17:906:2899:: with SMTP id o25mr28615022ejd.192.1567506310676;
        Tue, 03 Sep 2019 03:25:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567506310; cv=none;
        d=google.com; s=arc-20160816;
        b=QPXAalRRQZgVPH8MqD7dqNZXtNpdYDP7L7QUETwSRjLSaNQjU8JGIovc93dVFZlLmo
         3V4Uo/GLsGfIjBd8Ijau0aXVkzrdReyZlDOX3BY5ga1M95CwqGP2yuPRpRbHu6YpNeGg
         EK8qMGKB7+F/Ine/PmSoJj8evf4eTK4mqnpyqZKc3lT4a9XdDtiGDGWZU2M7ObN7R2zs
         F0r4NYXtrTpMZ5BETs0cjX5pOerrMohJCPdePKn5gKWrnb+2OLbv9ETVx9L1uYWl6Qo9
         2d7kTFdrgacARFGk+qVdtcOw8usHvDSjJXBQDyorlrEZz5CbwO7DmxMr+g41L98mGdY8
         mK/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :to:from:subject:message-id;
        bh=Gv41oeawMmilPR+4Hgf77znB9Ttve3ojw2+ipEPCcNQ=;
        b=PyZ/UXeYHNt9xyVcT2XN/g7YuucqG/eVFY4fCmBeGbm2RlnAUqhyZOUMCr7Sk33+sd
         EYAzdCANTr5xk/FxDTUI9g4WclwtKVqw7fEKkoFy5aIjao0JTLO3Q0KMz/0kdN6tIEyB
         yGLNq412gfVkikPTItIPGu2dCYyLM2GePTfFMRDtO10oIvHhag7JCinUA+1sB5uB9hsC
         jz802oqVagFKrgAQlZFWqi6syJsVzv0DZBi66OVd+YtroqbyeJsm+NDExyE+/69PVLSf
         A8ChWwFIiUVZhG6lUpOcLPw2Tj/pK32ZnaPqkKR1Y2McO34hJU3yVXuvUXkEwwZmjwnY
         zU6Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id la22si3196245ejb.22.2019.09.03.03.25.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 03:25:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id BCC73AD46;
	Tue,  3 Sep 2019 10:25:09 +0000 (UTC)
Message-ID: <1567506309.2878.5.camel@suse.com>
Subject: [usb-storage] Re: [PATCH] Revert "gpss: core: no waiters left behind
 on deregister"
From: Oliver Neukum <oneukum@suse.com>
To: martin.petersen@oracle.com, jejb@linux.ibm.com,
 linux-scsi@vger.kernel.org,  usb-storage@lists.one-eyed-alien.net,
 stern@rowland.harvard.edu
Date: Tue, 03 Sep 2019 12:25:09 +0200
In-Reply-To: <20190903101840.16483-2-oneukum@suse.com>
References: <20190903101840.16483-1-oneukum@suse.com>
	 <20190903101840.16483-2-oneukum@suse.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
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

Am Dienstag, den 03.09.2019, 12:18 +0200 schrieb Oliver Neukum:
> This reverts commit f95aec18e46af9d7fb6f312020824d536dd720dd.

Please ignore this.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1567506309.2878.5.camel%40suse.com.
