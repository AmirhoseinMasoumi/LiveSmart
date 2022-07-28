#ifndef SETTINGS_H
#define SETTINGS_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDateTime>
#include <QTimer>
#include <QDebug>

class settings : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString currentTime READ currentTime WRITE setCurrentTime NOTIFY currentTimeChanged)
    Q_PROPERTY(QString currentDate READ currentDate WRITE setCurrentDate NOTIFY currentDateChanged)

    Q_PROPERTY(QString password READ password WRITE setPassword NOTIFY passwordChanged)

    Q_PROPERTY(QString theme READ theme WRITE setTheme NOTIFY themeChanged)

    Q_PROPERTY(QStringList users READ users WRITE setUsers NOTIFY usersChanged)

public:
    explicit settings(QObject *parent = nullptr);
    ~settings();

    const QString &password() const;
    void setPassword(const QString &newPassword);
    const QString &theme() const;
    void setTheme(const QString &newTheme);
    const QStringList &users() const;
    void setUsers(const QStringList &newUsers);
    const QString &currentTime() const;
    void setCurrentTime(const QString &newCurrentTime);
    const QString &currentDate() const;
    void setCurrentDate(const QString &newCurrentDate);

private:
    QString m_currentTime;
    QString m_currentDate;
    QString m_password;
    QString m_theme;
    QStringList m_users;
    /////////////////////////////////////////////////////////
    QTimer *timer;

public slots:
    void getPassword(QString password);
    void getTheme(QString theme);
    void newUser(QString user);
    void deleteUser(QString user);

private slots:
    void sendDataTime();


signals:
    void currentTimeChanged();
    void currentDateChanged();
    void passwordChanged();
    void themeChanged();
    void usersChanged();
};

#endif // SETTINGS_H
